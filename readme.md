# Hapus Regident Bapenda Jateng - Documentation

Repository ini berisi seluruh berkas dokumentasi sistem informasi **Hapus Regident Bapenda Jawa Tengah** berbasis **Read the Docs** (menggunakan **MkDocs** dengan tema **Material**).

---

## Cara Menjalankan Dokumentasi Secara Lokal

Ikuti langkah-langkah berikut untuk menjalankan server dokumentasi di komputer lokal Anda:

### 1. Buat Python Virtual Environment (Direkomendasikan)
Buat lingkungan virtual Python agar dependensi tidak bentrok dengan pustaka global:
```bash
python3 -m venv venv
```

### 2. Aktifkan Virtual Environment
*   Di macOS / Linux:
    ```bash
    source venv/bin/activate
    ```
*   Di Windows (Command Prompt):
    ```cmd
    venv\Scripts\activate.bat
    ```
*   Di Windows (PowerShell):
    ```powershell
    .\venv\Scripts\Activate.ps1
    ```

### 3. Instal Dependensi Dokumentasi
Instal MkDocs beserta seluruh paket ekstensi visual yang dibutuhkan:
```bash
pip install -r requirements.txt
```

### 4. Jalankan Server Dokumentasi
Mulai server lokal pengembangan:
```bash
mkdocs serve
```

Setelah server aktif, buka peramban (browser) Anda dan akses tautan berikut:
👉 **[http://127.0.0.1:8000/](http://127.0.0.1:8000/)**

---

## Struktur Berkas Dokumentasi
Semua konten halaman dokumentasi berada di dalam direktori `docs/`:
*   `docs/index.md` - Halaman Selamat Datang & Ringkasan Alur.
*   `docs/arsitektur.md` - Struktur Data & Detail Teknologi.
*   `docs/instalasi.md` - Petunjuk Instalasi Aplikasi bagi Developer.
*   `docs/rbac.md` - Panduan Peran Pengguna & Hak Akses (Permissions).
*   `docs/manual/` - Panduan operasional terpisah untuk Wajib Pajak dan Petugas Instansi.
*   `docs/troubleshooting.md` - Solusi masalah umum dan riwayat perbaikan bug.
