# Hapus Regident Ditlantas Jateng - Documentation

Repository ini berisi seluruh berkas dokumentasi sistem informasi **Hapus Regident Ditlantas Jawa Tengah** berbasis **Read the Docs** (menggunakan **MkDocs** dengan tema **Material**).

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

---

## Deployment Produksi

Terdapat dua cara utama untuk mendeploy dokumentasi ini ke server produksi:

### Metode A: Menggunakan Docker & Caddy (Direkomendasikan)

Metode ini sangat praktis karena tidak memerlukan instalasi Python di server target. **Docker Compose** dan **Caddy Server** akan secara otomatis membangun situs dan menangani penerbitan sertifikat SSL (HTTPS) Let's Encrypt secara gratis.

#### Langkah-Langkah Deploy:

1.  **Arahkan DNS**:
    Arahkan domain Anda (misal: `docs.ditlantas.go.id`) via DNS A Record ke IP Publik server VPS Anda.

2.  **Sesuaikan Nama Domain**:
    Buka berkas [docker-compose.yml](../sip-hapus-docs/docker-compose.yml) dan ubah variabel lingkungan `SITE_DOMAIN` menjadi domain Anda:
    ```yaml
    environment:
      - SITE_DOMAIN=docs.ditlantas.go.id # Ganti dengan domain Anda
    ```

3.  **Jalankan Container**:
    Jalankan perintah berikut di server produksi pada direktori root proyek:
    ```bash
    docker compose up -d --build
    ```

Caddy akan mendeteksi konfigurasi domain, mengunduh sertifikat SSL HTTPS, mengalihkan port 80 ke 443 secara otomatis, dan menyajikan dokumentasi.

---

### Metode B: Tanpa Docker (Server Nginx / Caddy Tradisional)

Jika server produksi Anda sudah memiliki Nginx atau Caddy terinstal secara langsung, Anda dapat membangun berkas statis dokumentasi di server dan menyajikannya secara tradisional.

#### Langkah-Langkah Deploy:

1.  **Instal Dependensi & Bangun Situs**:
    Jalankan perintah berikut di server produksi untuk menginstal requirements dan melakukan build:
    ```bash
    pip install -r requirements.txt
    mkdocs build
    ```
    Perintah ini akan menghasilkan direktori `/site` yang berisi file HTML, CSS, JS statis.

2.  **Konfigurasi Nginx**:
    Arahkan Nginx block Anda untuk menyajikan isi direktori `/site` tersebut. Contoh konfigurasi `/etc/nginx/sites-available/docs`:
    ```nginx
    server {
        listen 80;
        server_name docs.ditlantas.go.id;
        root /path/to/sip-hapus-docs/site;
        index index.html;

        location / {
            try_files $uri $uri/ =404;
        }
    }
    ```
    Aktifkan konfigurasi dan muat ulang Nginx:
    ```bash
    ln -s /etc/nginx/sites-available/docs /etc/nginx/sites-enabled/
    nginx -t && systemctl reload nginx
    ```

3.  **Setup SSL dengan Certbot (Let's Encrypt)**:
    Jalankan Certbot untuk mendapatkan sertifikat HTTPS gratis secara otomatis:
    ```bash
    certbot --nginx -d docs.ditlantas.go.id
    ```

---

## Memperbarui Dokumentasi di Produksi (Workflow Updates)

Setiap kali Anda mengubah konten di dalam folder `docs/` atau mengubah konfigurasi menu di `mkdocs.yml`:

*   **Jika Menggunakan Docker**:
    Cukup tarik perubahan terbaru dari repositori Git dan bangun ulang container:
    ```bash
    git pull origin main
    docker compose up -d --build
    ```
*   **Jika Tanpa Docker**:
    Tarik perubahan terbaru dan jalankan kembali proses build:
    ```bash
    git pull origin main
    mkdocs build
    ```


