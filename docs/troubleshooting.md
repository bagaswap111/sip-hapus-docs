# Troubleshooting & Penanganan Masalah

Halaman ini berisi daftar solusi untuk kendala umum yang mungkin dihadapi saat pengembangan atau pemeliharaan aplikasi Hapus Regident.

---

## 1. Masalah Umum & Solusi

### A. Simbol Link Storage Error (Gambar / PDF tidak muncul)
*   **Masalah**: File dokumen yang diunggah oleh Wajib Pajak tidak muncul di sisi petugas (error 404).
*   **Solusi**: Pastikan Anda telah membuat symbolic link dari direktori storage ke public folder. Jalankan perintah berikut:
    ```bash
    php artisan storage:link
    ```
    Jika menggunakan Docker, pastikan volume mapping untuk direktori `storage` sudah dikonfigurasi dengan benar di `docker-compose.yml`.

### B. Error Seeding Wilayah IndoRegion
*   **Masalah**: `Class IndoRegionSeeder does not exist` saat menjalankan seed database.
*   **Solusi**: Jalankan perintah composer dump-autoload terlebih dahulu untuk merefresh daftar class yang didaftarkan:
    ```bash
    composer dump-autoload
    php artisan db:seed --class=IndoRegionSeeder
    ```

---

## 2. Riwayat Perbaikan Bug Penting

### Bug: Duplikasi Data Kendaraan Saat Pengajuan (Fixed)

#### Deskripsi Masalah
Saat pengujian di form pengajuan:
1.  Wajib Pajak menginput data Kendaraan 1 dan menyimpannya.
2.  Menambahkan Kendaraan 2 dan mengisi beberapa data.
3.  Menghapus Kendaraan 2 dari form sebelum proses finalisasi.
4.  Mengirimkan pengajuan.
5.  **Masalah**: Di dalam nomor pengajuan yang terbentuk, masih tercatat ada 2 kendaraan, dan data Kendaraan 2 terduplikasi secara identik dengan data Kendaraan 1.

#### Root Cause Analysis (Penyebab Utama)
Setelah dilakukan penelusuran pada file `resources/views/pengajuan/create.blade.php`, ditemukan beberapa masalah sinkronisasi state di sisi JavaScript:
1.  **Missing State Cleanup**: Saat fungsi `hapusKendaraan()` dipanggil, status penundaan autosave (`savingState[index]`) tidak ikut dibersihkan. Ini memicu crash race-condition ketika proses simpan otomatis sedang berjalan di latar belakang.
2.  **Unsafe Renumbering Logic**: Fungsi `renumberKendaraans()` melakukan pengindeksan ulang formulir tanpa melakukan pengecekan apakah indeks benar-benar berubah, serta tidak membersihkan timers (`autoSaveTimers`) dan status simpan milik indeks yang lama.

#### Perubahan Kode Perbaikan
Kami telah memperbaiki masalah ini dengan melakukan pemutakhiran logika JavaScript pada file `resources/views/pengajuan/create.blade.php`:

```javascript
// 1. Membersihkan status savingState saat kendaraan dihapus
clearTimeout(autoSaveTimers[index]);
delete autoSaveTimers[index];
delete formDirtyState[index];
delete savingState[index]; // <-- Ditambahkan untuk membersihkan state penundaan

// 2. Memperbaiki logika renumbering agar hanya memperbarui indeks yang berubah
forms.forEach((form, newIndex) => {
    const newNumber = newIndex + 1;
    const oldIndex = parseInt(form.getAttribute('data-kendaraan-index'));
    
    if (oldIndex !== newNumber) {
        form.setAttribute('data-kendaraan-index', newNumber);
        
        // Membersihkan state lama
        if (Object.prototype.hasOwnProperty.call(savingState, oldIndex)) {
            delete savingState[oldIndex];
        }
        if (Object.prototype.hasOwnProperty.call(autoSaveTimers, oldIndex)) {
            clearTimeout(autoSaveTimers[oldIndex]);
            delete autoSaveTimers[oldIndex];
        }
    }
});
```

#### Cara Verifikasi Perbaikan
Untuk memastikan bug ini tidak terulang kembali, lakukan pengujian berikut di browser Anda:
1.  Buka tab **Network** di Developer Tools browser.
2.  Isi Kendaraan 1 secara lengkap dan tunggu status auto-save berhasil disimpan.
3.  Klik **Tambah Kendaraan** untuk membuat formulir Kendaraan 2. Isi beberapa kolom.
4.  Tunggu minimal 3 detik (hingga auto-save memicu request POST dan sukses di-save).
5.  Klik tombol **Hapus (X)** pada Kendaraan 2.
6.  Pastikan dialog konfirmasi penghapusan muncul dan request **DELETE** dikirimkan ke server dengan status `200 OK`.
7.  Klik **Simpan & Kirim Pengajuan** dan pastikan bundel pengajuan yang terbentuk hanya berisi 1 data kendaraan yang valid.
