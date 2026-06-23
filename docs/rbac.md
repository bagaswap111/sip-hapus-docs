# Hak Akses (Role-Based Access Control)

Sistem menggunakan **Role-Based Access Control (RBAC)** melalui paket `spatie/laravel-permission` untuk membatasi akses fitur dan modul secara ketat berdasarkan peran pengguna.

---

## Modul dan Izin (Permissions)

Izin dalam sistem dibagi menjadi 4 modul utama:

### 1. Modul Manajemen Pengajuan (Petugas Samsat / Admin)
Diperuntukkan bagi petugas instansi yang memverifikasi dokumen pengajuan warga:
*   `view_all_pengajuan`: Melihat seluruh daftar pengajuan yang masuk ke Bapenda (Route: `admin.pengajuan.index`).
*   `view_all_pengajuan_detail`: Membuka dan mengecek berkas detail suatu pengajuan/kendaraan (Route: `admin.pengajuan.show`).
*   `update_status_kendaraan`: Memverifikasi/mengubah status kendaraan menjadi *Diproses*, *Selesai*, atau *Ditolak* (Route: `admin.pengajuan.batchUpdate`).
*   `delete_all_pengajuan`: Menghapus paksa pengajuan milik pengguna lain jika terjadi error/spam (Route: `admin.pengajuan.destroy`).
*   `create_admin_log`: Menambahkan "Catatan Internal" atau "Catatan Revisi" untuk Wajib Pajak (Route: `admin.pengajuan.log.store`).

### 2. Modul Pengajuan & Kendaraan (Wajib Pajak / Warga / Dealer)
Diperuntukkan bagi pemilik kendaraan yang mengajukan penghapusan:
*   `view_own_pengajuan`: Melihat daftar pengajuan buatan sendiri.
*   `create_pengajuan`: Mengakses halaman formulir pembuatan pengajuan baru.
*   `store_pengajuan`: Mengirimkan draf pengajuan ke petugas verifikator.
*   `edit_own_kendaraan`: Mengubah data atau berkas lampiran kendaraan yang statusnya masih *Draft* atau *Revisi* (tombol edit otomatis disembunyikan jika status sudah *Selesai*).
*   `delete_own_kendaraan`: Menghapus data kendaraan dari keranjang draf pengajuan.
*   `create_own_log`: Mengirim komentar balasan atau mengirim ulang berkas revisi setelah diperbaiki.

### 3. Modul PDF Generator
Digunakan untuk mencetak dokumen fisik/digital:
*   `export_pdf_pengajuan`: Mengunduh berkas rekapan tanda pengajuan dalam format PDF.

### 4. Modul Manajemen Sistem (Superadmin / IT Support)
Digunakan untuk mengelola pengguna dan hak akses global di sistem:
*   `view_users`: Melihat daftar seluruh akun pengguna di sistem.
*   `create_users`: Mendaftarkan akun pengguna baru melalui dashboard.
*   `edit_users`: Mengubah profil data pengguna dan menetapkan Role (Grup Akses).
*   `delete_users`: Menonaktifkan atau menghapus akun pengguna.
*   `manage_rbac`: Mengatur Role & Permission secara dinamis (Membuat, mengubah, atau menghapus hak akses).

---

## Matriks Peran Pengguna (Roles Matrix)

Berikut adalah ringkasan pembagian peran (roles) dan fungsionalitas utamanya:

| Peran (Role) | Deskripsi Singkat | Fungsionalitas Utama                                                                                                                     |
| :--- | :--- |:-----------------------------------------------------------------------------------------------------------------------------------------|
| **Wajib Pajak (Warga/Dealer)** | Pemilik kendaraan yang mendaftarkan penghapusan. | Membuat draf pengajuan, mengunggah persyaratan, merespons revisi berkas.                                                                 |
| **Petugas Samsat / Admin** | Verifikator awal berkas di tingkat cabang pembantu. | Membuat draf pengajuan, mengunggah persyaratan, Memeriksa fisik berkas, menyetujui draf awal, menerbitkan Surat Pengajuan (SP) ke Polda. |
| **Polda / Regident** | Validasi keabsahan hukum & regident Ditlantas Polda. | Memproses SP tingkat Polda, memverifikasi status regident (kriminal/blokir), menerbitkan SK Polda.                                       |
| **Bapenda** | Pemeriksa kewajiban fiskal / pajak daerah. | Memverifikasi pembayaran PKB kendaraan, menyetujui SP fiskal, mengunggah SK Bapenda.                                                     |
| **Jasa Raharja** | Pemeriksa asuransi & sumbangan wajib jalan raya. | Memeriksa kepatuhan iuran SWDKLLJ, menyetujui SP Jasa Raharja, mengunggah SK Jasa Raharja.                                               |
| **Superadmin / IT** | Administrator sistem utama. | Manajemen user, konfigurasi sistem, audit log, pengelolaan RBAC secara keseluruhan.                                                      |
