## Preview SK sebelum Submit

### Deskripsi
Fitur ini memungkinkan pengguna dari instansi Polda atau Bapenda untuk melihat pratinjau (preview) dokumen PDF Surat Keputusan (SK) terlebih dahulu sebelum data tersebut disimpan atau dikirim secara resmi oleh sistem.

### Prasyarat
- Pengguna telah login ke dalam sistem sebagai **Polda**
- Status Surat Pengajuan (SP) terkait sudah berada dalam tahap **Fully Approved**

### Langkah-Langkah

**Langkah 1 — Akses Halaman Manajemen Pengajuan**

Navigasi ke halaman Manajemen Pengajuan.

![Ke halaman manajemen pengajuan](Images/suratKeputusan-1_1.png)

**Langkah 2 — Buka Detail Pengajuan**

Akses hdetail pengajuan yang telah disetujui penuh.

![Ke detail pengajuan](Images/suratKeputusan-1_2.png)

**Langkah 3 — Inisiasi Pembuatan Surat Keputusan**

Klik tombol **Buat SK Polda**.

![Tombol buat surat keputusan](Images/suratKeputusan-1_3.png)

**Langkah 4 — Isi Formulir Surat Keputusan**

Lengkapi seluruh data penulisan dokumen yang diminta pada jendela tampilan (modal form) SK yang muncul.

![Form surat keputusan](Images/suratKeputusan-1_4.png)

**Langkah 5 — Tampilkan Pratinjau Dokumen**

Cari dan klik tombol **Lihat Preview** untuk memproses tampilan sementara dokumen.

![Tombol preview](Images/suratKeputusan-1_5.png)

> ⚠️ **Mode Pratinjau:** Langkah ini berjalan dalam mode preview murni. Sistem tidak akan membuat berkas penyimpanan log baru, tidak menyimpan media ke server, dan tidak memicu pengiriman notifikasi WhatsApp.

**Langkah 6 — Simpan Draft**

Cek preview surat, jika ada yang ingin diubah, klik **Kembali Edit**.

![Tombol kembali edit](Images/suratKeputusan-1_6.png)

Jika sudah benar, klik **Simpan Draf SK**.

![tombol simpan sebagai draft](Images/suratKeputusan-1_7.png)

**Langkah 7 — Terbitkan SK**

Pastikan isi pratinjau surat keputusan sudah tepat dan klik tombol **Terbitkan SK**.

![Tombol terbitkan sk](Images/suratKeputusan-1_8.png)

Unggah dokumen SK yang telah ditandatangani secara resmi, dan klik kotak konfirmasi.

![unggah dokumen sk](Images/suratKeputusan-1_9.png)

Klik tombol **Terbitkan SK** jika dokumen sudah sesuai untuk menerbitkan SP.

![klik terbitkan SK](Images/suratKeputusan-1_10.png)

**Langkah 8 — Konfirmasi Penerbitan SP**

Klik tombol **OK** pada pop-up yang muncul pada browser.

![konfirmasi terbit sk web](Images/suratKeputusan-1_11.png)

### Hasil yang Diharapkan
- File PDF Surat Keputusan (SK) berhasil di-render oleh sistem secara real-time berdasarkan data formulir modal.
- Dokumen pratinjau berhasil ditampilkan dengan aman di dalam komponen *iframe preview* tanpa memicu fungsi penyimpanan data atau pengiriman eksternal.

![surat sk berhasil terbit](Images/suratKeputusan-1_12.png)

---
## Penerbitan SK Pembebasan SWDKLLJ (Jasa Raharja)

### Deskripsi
Fitur ini memungkinkan petugas yang berwenang untuk menerbitkan dokumen Surat Keputusan (SK) Pembebasan SWDKLLJ secara resmi, menyimpan data ke dalam sistem, serta memicu pengiriman notifikasi otomatis kepada Wajib Pajak.

### Prasyarat
- Pengguna telah login sebagai **Jasa Raharja**
- Status Surat Pengajuan (SP) terkait sudah berada dalam tahap **Fully Approved**

### Langkah-Langkah

**Langkah 1 — Akses Halaman Manajemen Pengajuan**

Navigasi ke halaman Manajemen Pengajuan.

![Ke halaman manajemen pengajuan](Images/suratKeputusan-2_1.png)

**Langkah 2 — Buka Detail Pengajuan**

Akses detail pengajuan yang telah disetujui penuh.

![Ke detail pengajuan](Images/suratKeputusan-2_2.png)

Klik tombol **Buat SK Jasa Raharja**.

![Tombol buat surat keputusan](Images/suratKeputusan-2_3.png)

**Langkah 3 — Isi Formulir SK Pembebasan**

Lengkapi seluruh kolom data yang diperlukan pada jendela tampilan (*modal form*) yang muncul di layar. Jika sudah sesuai, klik **Lihat Preview**.

![Tombol preview](Images/suratKeputusan-2_4.png)

**Langkah 4 — Simpan Draft**

Cek preview surat, jika ada yang ingin diubah, klik **Kembali Edit**.

![Tombol kembali edit](Images/suratKeputusan-2_5.png)

Jika sudah benar, klik **Simpan Draf SK**.

![tombol simpan sebagai draft](Images/suratKeputusan-2_6.png)

**Langkah 5 — Terbitkan SK**

Pastikan isi pratinjau surat keputusan sudah tepat dan klik tombol **Terbitkan SK**.

![Tombol terbitkan sk](Images/suratKeputusan-2_7.png)

Unggah dokumen SK yang telah ditandatangani secara resmi, dan klik kotak konfirmasi.

![unggah dokumen sk](Images/suratKeputusan-2_8.png)

Klik tombol **Terbitkan SK** jika dokumen sudah sesuai untuk menerbitkan SP.

![klik terbitkan SK](Images/suratKeputusan-2_9.png)

**Langkah 6 — Konfirmasi Penerbitan SP**

Klik tombol **OK** pada pop-up yang muncul pada browser.

![konfirmasi terbit sk web](Images/suratKeputusan-2_10.png)

### Hasil yang Diharapkan
- Sistem otomatis membuka *tab* baru di *browser* yang menampilkan file PDF dari SK Pembebasan SWDKLLJ yang telah diterbitkan.
- Tampilan pada *tab* utama otomatis dialihkan (*redirect*) menuju halaman **Log & Diskusi**.
- Aktivitas penerbitan dokumen berhasil tercatat secara permanen di dalam log riwayat sistem.
- Sistem berhasil mengirimkan pesan notifikasi otomatis via WhatsApp kepada Wajib Pajak terkait.

![sk berhasil terbit](Images/suratKeputusan-2_11.png)

---
## Penerbitan SK Pembebasan PKB (Bapenda)

### Deskripsi
Fitur ini memungkinkan instansi Bapenda untuk menerbitkan dokumen Surat Keputusan (SK) Pembebasan PKB secara resmi, mengamankan catatan log sistem, serta memicu pengiriman pesan pemberitahuan otomatis kepada Wajib Pajak.

### Prasyarat
- Pengguna telah login ke dalam sistem sebagai **Bapenda**
- Status Surat Pengajuan (SP) terkait sudah berada dalam tahap **Fully Approved**

### Langkah-Langkah

**Langkah 1 — Akses Halaman Manajemen Pengajuan**

Navigasi ke halaman Manajemen Pengajuan.

![Ke halaman manajemen pengajuan](Images/suratKeputusan-3_1.png)

**Langkah 2 — Buka Detail Pengajuan**

Akses detail pengajuan yang telah disetujui penuh.

![Ke detail pengajuan](Images/suratKeputusan-3_2.png)

Klik tombol **Buat SK Bapenda**.

![Tombol buat surat keputusan](Images/suratKeputusan-3_3.png)

**Langkah 3 — Isi Formulir SK Pembebasan**

Lengkapi seluruh kolom data yang diperlukan pada jendela tampilan (*modal form*) yang muncul di layar. Jika sudah sesuai, klik **Lihat Preview**.

![Tombol preview](Images/suratKeputusan-3_4.png)

**Langkah 4 — Simpan Draft**

Cek preview surat, jika ada yang ingin diubah, klik **Kembali Edit**.

![Tombol kembali edit](Images/suratKeputusan-3_5.png)

Jika sudah benar, klik **Simpan Draf SK**.

![tombol simpan sebagai draft](Images/suratKeputusan-3_6.png)

**Langkah 5 — Terbitkan SK**

Pastikan isi pratinjau surat keputusan sudah tepat dan klik tombol **Terbitkan SK**.

![Tombol terbitkan sk](Images/suratKeputusan-3_7.png)

Unggah dokumen SK yang telah ditandatangani secara resmi, dan klik kotak konfirmasi.

![unggah dokumen sk](Images/suratKeputusan-3_8.png)

Klik tombol **Terbitkan SK** jika dokumen sudah sesuai untuk menerbitkan SP.

![klik terbitkan SK](Images/suratKeputusan-3_9.png)

**Langkah 6 — Konfirmasi Penerbitan SP**

Klik tombol **OK** pada pop-up yang muncul pada browser.

![konfirmasi terbit sk web](Images/suratKeputusan-3_10.png)

### Hasil yang Diharapkan
- Sistem otomatis membuka *tab* baru di *browser* yang menampilkan berkas PDF dari SK Pembebasan PKB yang telah diterbitkan.
- Tampilan layar pada *tab* utama otomatis dialihkan (*redirect*) menuju halaman **Log & Diskusi**.
- Aktivitas penerbitan dokumen berhasil tercatat secara permanen di dalam riwayat log sistem.
- Sistem berhasil mengirimkan pesan notifikasi resmi via WhatsApp kepada pihak Wajib Pajak.

![sk bapenda berhasil terbit](Images/suratKeputusan-3_11.png)
