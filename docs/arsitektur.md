# Arsitektur & Teknologi

Aplikasi Hapus Regident Bapenda Jawa Tengah dibangun menggunakan pola arsitektur modern yang mengedepankan keamanan data, integrasi mulus antar-instansi, dan keandalan sistem.

---

## Stack Teknologi Utama

Aplikasi ini menggunakan teknologi berikut untuk memastikan keandalan di tingkat produksi:

| Komponen | Teknologi yang Digunakan | Peran / Deskripsi |
| :--- | :--- | :--- |
| **Framework Utama** | Laravel (MVC Architecture) | Menyediakan struktur backend, routing, ORM, dan keamanan. |
| **Database** | MySQL / PostgreSQL | Penyimpanan data relasional terstruktur. SQLite digunakan untuk pengujian (PHPUnit). |
| **Frontend Layout** | Vanilla CSS & TailwindCSS | Kustomisasi tampilan antarmuka yang bersih, responsif, dan modern. |
| **Frontend Logic** | Vanilla JS | Manajemen state secara interaktif di sisi klien (seperti fitur auto-save). |
| **PDF Generator** | Barryvdh DomPDF | Pembuatan dokumen dinamis seperti Surat Pengajuan (SP) dan Surat Keputusan (SK). |
| **Media Storage** | Spatie Media Library | Manajemen file lampiran (KTP, STNK, BPKB, Foto Kendaraan). |
| **Keamanan & Auth** | Laravel Fortify / Breeze | Sistem autentikasi pengguna yang aman. |
| **Manajemen Akses** | Spatie Laravel-Permission | Mengatur hak akses berbasis peran (RBAC). |

---

## Model Data & Struktur Database

Sistem ini didukung oleh model data relasional utama berikut:

### 1. User
Menyimpan data kredensial, profil pengguna, jenis instansi kerja, serta relasi ke cabang dan peran (roles).

### 2. Pengajuan
Mewakili bundel pengajuan penghapusan kendaraan yang dibuat oleh Wajib Pajak.
*   **Format Nomor Pengajuan**: `PJN-yymm-xxxx` (unik).
*   Satu pengajuan dapat menampung banyak kendaraan (**One-to-Many** ke model Kendaraan).

### 3. Kendaraan
Menyimpan detail kendaraan seperti NRKB (Plat Nomor), No. Rangka, No. Mesin, Warna TNKB, dan status verifikasi masing-masing kendaraan:
*   `draft`: Pengisian draf oleh wajib pajak.
*   `pengajuan`: Dikirim ke Samsat untuk verifikasi awal.
*   `diproses`: Dalam tahap verifikasi di tingkat Polda, Bapenda, dan Jasa Raharja.
*   `selesai`: Ketiga SK instansi telah diterbitkan secara lengkap.
*   `ditolak`: Berkas dikembalikan karena tidak lengkap atau tidak sah.

### 4. Pemilik
Menyimpan detail data pemilik kendaraan (Nama, NIK, Alamat, Kontak).

### 5. SuratPengajuan (SP)
Representasi digital surat pengajuan antar-instansi dengan status persetujuan terdistribusi (`persetujuan_unit_kerja`).

### 6. SuratKeputusan (SK)
Menyimpan lampiran dokumen fisik SK resmi yang diterbitkan oleh masing-masing unit kerja (Polda, Bapenda, Jasa Raharja).

### 7. KendaraanLog
Histori lengkap aktivitas, log audit, catatan revisi, dan komunikasi antara petugas dengan Wajib Pajak.
