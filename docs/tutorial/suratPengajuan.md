## Cek Kesesuaian Data & Ajukan ke Polda (Samsat)

### Deskripsi
Fitur ini memungkinkan petugas Samsat untuk memverifikasi kesesuaian data pengajuan dan meneruskannya ke Polda.

### Prasyarat
- Login sebagai Samsat, terdapat pengajuan baru yang masuk

### Langkah-Langkah

**Langkah 1 — Akses Halaman Manajemen Pengajuan**

Navigasi ke halaman Manajemen Pengajuan sebagai Samsat.

![Ke halaman manajemen pengajuan](Images/suratpengajuan-1_1.png)

**Langkah 2 — Buka Detail Pengajuan**

Akses halaman manajemen pengajuan, lalu detail pengajuan yang baru masuk.

![Ke detail pengajuan](Images/suratpengajuan-1_2.png)

**Langkah 3 — Periksa Kesesuaian Data**

Tinjau seluruh data dan berkas yang dilampirkan oleh Wajib Pajak untuk memastikan kesesuaiannya.

![Ke dokumen pengajuan](Images/suratpengajuan-1_3.png)

**Langkah 4 — Ajukan ke Polda**

Klik tombol **Ajukan ke Polda** untuk meneruskan pengajuan.

![Tombol ajukan ke polda](Images/suratpengajuan-1_4.png)

**Langkah 5 — Konfirmasi Pengajuan**

Klik tombol **Kirim** untuk mengonfirmasi pengajuan.

![Tombol konfirmasi ajukan ke polda](Images/suratpengajuan-1_5.png)

### Hasil yang Diharapkan
- Pengajuan berhasil diteruskan ke Polda dan status pengajuan diperbarui sesuai.

![Pengajuan berhasil diteruskan](Images/suratpengajuan-1_6.png)

---
## Verifikasi & Setujui SP oleh Polda

### Deskripsi
Fitur ini memungkinkan petugas Polda untuk mereview dan menyetujui Surat Pengajuan (SP) yang diteruskan dari Samsat.

### Prasyarat
- Login sebagai Polda, SP ke Polda sudah masuk dengan status **pending**

### Langkah-Langkah

**Langkah 1 — Akses Halaman Manajemen Pengajuan**

Navigasi ke halaman Manajemen Pengajuan.

![ke halaman manajemen pengajuan](Images/suratpengajuan-2_1.png)

**Langkah 2 — Buka Detail Pengajuan**

Akses halaman detail pengajuan yang terkait dengan SP yang akan diverifikasi.

![Ke halaman detail pengajuan](Images/suratpengajuan-2_2.png)

**Langkah 3 — Review Dokumen SP**

Tinjau seluruh dokumen Surat Pengajuan yang tersedia.

![Ke dokumen pengajuan](Images/suratpengajuan-2_3.png)

**Langkah 4 — Setujui atau Tolak Dokumen**

Klik tombol **Review & Balas SP Samsat** untuk memberikan persetujuan ataupun penolakan.

![Tombol review & balas SP](Images/suratpengajuan-2_4.png)

Jika pengajuan ditolak, klik tombol **Tolak** untuk memberikan penolakan.

![Tombol tolak](Images/suratpengajuan-2_5.png)

Jika pengajuan disetujui, klik tombol **kirim** untuk memberikan persetujuan.

![Tombol kirim](Images/suratpengajuan-2_6.png)

### Hasil yang Diharapkan
- Surat Pengajuan berhasil disetujui dan status pengajuan diperbarui ke tahap berikutnya.

![sp berhasil disetujui](Images/suratpengajuan-2_7.png)

---
## Polda Ajukan SP ke Bapenda & Jasa Raharja

### Deskripsi
Fitur ini memungkinkan instansi Polda untuk mengajukan Surat Pengajuan (SP) yang telah disetujui kepada pihak Bapenda dan Jasa Raharja.

### Prasyarat
- Pengguna telah login ke dalam sistem sebagai **Polda**
- Surat Pengajuan (SP) Polda sudah dalam status **Approved**

### Langkah-Langkah

**Langkah 1 — Akses Pengajuan Terkait**

Pilih pengajuan yang telah disetujui (*Approved*) dan buka halaman detail.

![Ke detail pengajuan](Images/suratpengajuan-3_1.png)

**Langkah 2 — Inisiasi Pengajuan ke Bapenda & Jasa Raharja**

Cari dan klik tombol **Buat SP ke Bapenda & JR**.

![Tombol ajukan ke bapenda & jr](Images/suratpengajuan-3_2.png)

**Langkah 3 — Isi Formulir Pengajuan**

Lengkapi kolom dokumen yang diperlukan pada formulir:

| Kolom | Keterangan |
|---|---|
| **Nomor Surat** | Nomor surat resmi yang valid |
| **Tempat** | Lokasi Polda |
| **Nama Direktur** | Nama lengkap direktur dengan gelar dalam huruf kapital |
| **Nama Pembuat Pernyataan** | Nama petugas penerbit SP |
| **Tanggal Dikeluarkan SP** | Tanggal SP dibuat |
| **Pangkat Direktur** | Pangkat direktur dalam huruf kapital |

> ⚠️ **Pastikan** nomor surat yang dimasukkan sudah benar dan sesuai dengan dokumen fisik, karena nomor ini akan tercatat dalam log sistem secara permanen.

Setelah semua terisi, klik **Lihat Preview**.

![Tombol lihat preview](Images/suratpengajuan-3_3.png)

**Langkah 4 — Simpan Draft**

Cek preview surat dan jika sudah benar, klik **Simpan sebagai Draft**.

![Tombol simpan draft](Images/suratpengajuan-3_4.png)

**Langkah 5 — Terbitkan SP**

Klik tombol **Terbitkan SP** untuk menerbitkan surat pengajuan.

![Tombol terbitkan sp](Images/suratpengajuan-3_5.png)

Unggah dokumen SP yang telah ditandatangani secara resmi, dan klik kotak konfirmasi.

![unggah dokumen sp](Images/suratpengajuan-3_6.png)

Klik tombol **Terbitkan SP** jika dokumen sudah sesuai untuk menerbitkan SP.

![klik terbitkan SP](Images/suratpengajuan-3_7.png)

**Langkah 6 — Konfirmasi Penerbitan SP**

Klik tombol **OK** pada pop-up yang muncul pada browser.

![konfirmasi terbit sp web](Images/suratpengajuan-3_8.png)

### Hasil yang Diharapkan
- Surat Pengajuan (SP) ke Bapenda & Jasa Raharja berhasil dibuat oleh sistem.
- Log aktivitas pengiriman surat berhasil tercatat dalam riwayat sistem.
- Status progres pengajuan otomatis ter-update ke tahap berikutnya.

![sp berhasil terbit](Images/suratpengajuan-3_9.png)

---

## Persetujuan SP oleh Bapenda

### Deskripsi
Fitur ini memungkinkan instansi Bapenda untuk meninjau dan menyetujui Surat Pengajuan (SP) yang dikirimkan oleh pihak Polda.

### Prasyarat
- Pengguna telah login ke dalam sistem sebagai **Bapenda**
- Surat Pengajuan (SP) dari Polda sudah masuk ke dalam daftar verifikasi Bapenda

### Langkah-Langkah

**Langkah 1 — Akses Halaman Manajemen Pengajuan**

Navigasi ke halaman Manajemen Pengajuan.

![Ke detail pengajuan](Images/suratpengajuan-4_1.png)

**Langkah 2 — Akses Detail Pengajuan**

Pilih pengajuan yang telah disetujui (*Approved*) dan buka halaman detail.

![Ke detail pengajuan](Images/suratpengajuan-4_2.png)

**Langkah 3 — Setujui Dokumen**

Tinjau seluruh informasi dokumen.

![tombol dokumen pengajuan](Images/suratpengajuan-4_3.png)

Cari dan klik tombol **Review & Balas SP**.

![Tombol balas sp](Images/suratpengajuan-4_4.png)

**Langkah 4 — Isi Formulir Balasan SP**

Lengkapi kolom dokumen yang diperlukan pada formulir:

| Kolom | Keterangan |
|---|---|
| **Nomor Surat** | Nomor surat resmi yang valid |
| **Lampiran** | Jumlah dan satuan lampiran yang disertakan |
| **Sifat** | Sifat surat balasan |
| **Hal** | Perihal kepentingan surat |
| **Provinsi** | Provinsi lokasi Bapenda |
| **Jabatan** | Jabatan pembuat surat balasan |
| **Nama Penandatangan** | Nama dan gelar pembuat surat dalam huruf kapital |
| **NIP** | Nomor Induk Pegawai pembuat surat |

![Form balasan sp](Images/suratpengajuan-4_5.png)

> ⚠️ **Pastikan** nomor surat yang dimasukkan sudah benar dan sesuai dengan dokumen fisik, karena nomor ini akan tercatat dalam log sistem secara permanen.

Setelah semua terisi, klik **Lihat Preview**.

![Tombol lihat preview](Images/suratpengajuan-4_6.png)

**Langkah 5 — Simpan Draft**

Cek preview surat, jika ada yang ingin diubah, klik **Kembali Edit**.

![Tombol kembali edit](Images/suratpengajuan-4_7.png)

Jika sudah benar, klik **Simpan sebagai Draft**.

![tombol simpan sebagai draft](Images/suratpengajuan-4_8.png)

**Langkah 6 — Terbitkan SP**

Klik tombol **Terbitkan SP** untuk menerbitkan surat balasan pengajuan.

![Tombol terbitkan sp](Images/suratpengajuan-4_9.png)

Unggah dokumen SP yang telah ditandatangani secara resmi, dan klik kotak konfirmasi.

![unggah dokumen sp](Images/suratpengajuan-4_10.png)

Klik tombol **Terbitkan SP** jika dokumen sudah sesuai untuk menerbitkan SP.

![klik terbitkan SP](Images/suratpengajuan-4_11.png)

**Langkah 7 — Konfirmasi Penerbitan SP**

Klik tombol **OK** pada pop-up yang muncul pada browser.

![konfirmasi terbit sp web](Images/suratpengajuan-4_12.png)

### Hasil yang Diharapkan
- Status persetujuan dari pihak Bapenda berhasil berubah menjadi **Approved**.
- Riwayat persetujuan tercatat pada sistem dan progres dokumen diperbarui.

![sp bapenda berhasil terbit](Images/suratpengajuan-4_13.png)

---

## Persetujuan SP oleh Jasa Raharja

### Deskripsi
Fitur ini memungkinkan pihak Jasa Raharja untuk meninjau dan menyetujui Surat Pengajuan (SP) yang dikirimkan oleh pihak Polda.

### Prasyarat
- Pengguna telah login ke dalam sistem sebagai **Jasa Raharja**
- Surat Pengajuan (SP) dari Polda sudah masuk ke dalam daftar verifikasi Jasa Raharja

### Langkah-Langkah

**Langkah 1 — Akses Manajemen Pengajuan**

Navigasi ke halaman Manajemen Pengajuan.

![Ke manajemen pengajuan](Images/suratpengajuan-5_1.png)

**Langkah 2 — Akses Detail Pengajuan**

Buka menu Surat Pengajuan, cari dokumen yang masuk dari Polda, lalu klik untuk membuka halaman detail pengajuan.

![Ke detail pengajuan](Images/suratpengajuan-5_2.png)

**Langkah 3 — Setujui Dokumen**

Tinjau seluruh informasi dokumen.

![tombol dokumen pengajuan](Images/suratpengajuan-5_3.png)

Cari dan klik tombol **Review & Balas SP**.

![Tombol balas sp](Images/suratpengajuan-5_4.png)

**Langkah 4 — Isi Formulir Balasan SP**

Lengkapi kolom dokumen yang diperlukan pada formulir:

| Kolom | Keterangan |
|---|---|
| **Nomor Surat** | Nomor surat resmi yang valid |
| **Nomor Surat Bapenda** | Nomor surat resmi yang valid dari Bapenda |
| **Nomor Surat Regident** | Nomor surat resmi yang valid dari Polda |
| **Tempat Surat** | Lokasi Jasa Raharja |
| **Nama Penandatangan** | Nama pembuat surat |
| **Tanggal Surat** | Tanggal pembuatan surat |
| **Jabatan Penandatangan** | Jabatan pembuat surat |

![Form balasan sp](Images/suratpengajuan-5_5.png)

> ⚠️ **Pastikan** nomor surat yang dimasukkan sudah benar dan sesuai dengan dokumen fisik, karena nomor ini akan tercatat dalam log sistem secara permanen.

Setelah semua terisi, klik **Lihat Preview**.

![Tombol lihat preview](Images/suratpengajuan-5_6.png)

**Langkah 5 — Simpan Draft**

Cek preview surat, jika ada yang ingin diubah, klik **Kembali Edit**.

![Tombol kembali edit](Images/suratpengajuan-5_7.png)

Jika sudah benar, klik **Simpan sebagai Draft**.

![tombol simpan sebagai draft](Images/suratpengajuan-5_8.png)

**Langkah 6 — Terbitkan SP**

Klik tombol **Terbitkan SP** untuk menerbitkan surat balasan pengajuan.

![Tombol terbitkan sp](Images/suratpengajuan-5_9.png)

Unggah dokumen SP yang telah ditandatangani secara resmi, dan klik kotak konfirmasi.

![unggah dokumen sp](Images/suratpengajuan-5_10.png)

Klik tombol **Terbitkan SP** jika dokumen sudah sesuai untuk menerbitkan SP.

![klik terbitkan SP](Images/suratpengajuan-5_11.png)

**Langkah 7 — Konfirmasi Penerbitan SP**

Klik tombol **OK** pada pop-up yang muncul pada browser.

![konfirmasi terbit sp web](Images/suratpengajuan-5_12.png)

> ⚠️ **Catatan Sistem:** Jika instansi Bapenda juga telah menyetujui dokumen ini sebelumnya, sistem akan otomatis mengubah status global pengajuan menjadi Fully Approved dan memperbarui status kendaraan.

### Hasil yang Diharapkan
- Status persetujuan dari pihak Jasa Raharja berhasil berubah menjadi **Approved**.
- Jika kedua instansi (Bapenda & Jasa Raharja) sudah memberikan persetujuan, status pengajuan otomatis berubah menjadi **Fully Approved**.
- Status kendaraan otomatis naik dan diperbarui menjadi **'Diproses'**.

![sp jr berhasil diterbitkan](Images/suratpengajuan-5_13.png)

---

## Preview PDF Surat Pengajuan

### Deskripsi
Fitur ini memungkinkan pengguna untuk melihat pratinjau (preview) dokumen PDF dari Surat Pengajuan langsung di dalam aplikasi sebelum mengunduhnya.

### Prasyarat
- Pengguna telah login ke dalam sistem
- Dokumen Surat Pengajuan (SP) sudah tersedia atau sudah dibuat pada sistem

### Langkah-Langkah

**Langkah 1 — Akses Detail Pengajuan**

Buka menu Surat Pengajuan dan pilih salah satu dokumen yang tersedia untuk masuk ke halaman detail pengajuan.

![Ke tab dokumen](Images/suratpengajuan-6_1.png)

**Langkah 2 — Buka Pratinjau PDF**

Cari dan klik ikon atau tautan **Lihat PDF** yang terletak pada halaman detail dokumen.

![Preview dokumen](Images/suratpengajuan-6_2.png)

### Hasil yang Diharapkan
- File PDF Surat Pengajuan berhasil di-render dengan benar tanpa merusak tata letak.
- Dokumen PDF berhasil ditampilkan secara langsung di dalam *browser* atau komponen *iframe* aplikasi.
