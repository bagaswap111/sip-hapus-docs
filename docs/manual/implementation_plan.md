# Rencana Implementasi Kontainerisasi Docker & SSL HTTPS dengan Caddy

Dokumen ini berisi rencana untuk membungkus sistem dokumentasi Hapus Regident (MkDocs) ke dalam Docker image siap pakai untuk produksi, lengkap dengan pengaturan SSL HTTPS otomatis menggunakan Caddy web server.

---

## User Review Required

> [!IMPORTANT]
> Konfigurasi Caddy membutuhkan nama domain asli (misalnya `dokumentasi.ditlantas.go.id`) agar dapat menerbitkan sertifikat SSL Let's Encrypt secara otomatis.
> *   Pada `Caddyfile` sementara, kami akan menggunakan placeholder `yourdomain.com` atau `:80` (untuk pengujian HTTP lokal). Anda harus menyesuaikannya dengan domain riil saat deployment.

---

## Proposed Changes

Kami akan membuat berkas konfigurasi Docker dan Caddy di direktori root project:

### Konfigurasi Docker & Caddy

#### [NEW] [Dockerfile](file:///Users/bagaskorosaputro/Documents/GithubDesktop/sip-hapus-docs/Dockerfile)
Dockerfile multi-stage:
*   **Stage 1 (Builder)**: Menggunakan Python image untuk menginstal dependensi (`requirements.txt`) dan memicu `mkdocs build` untuk menghasilkan aset static HTML di folder `site/`.
*   **Stage 2 (Final)**: Menggunakan official image Caddy untuk menyajikan aset statis tersebut secara langsung dengan performa tinggi.

#### [NEW] [Caddyfile](file:///Users/bagaskorosaputro/Documents/GithubDesktop/sip-hapus-docs/Caddyfile)
File konfigurasi Caddy Server untuk mengatur domain, mengarahkan lalu lintas HTTP ke HTTPS secara otomatis, dan menyajikan file statis dari folder build.

#### [NEW] [docker-compose.yml](file:///Users/bagaskorosaputro/Documents/GithubDesktop/sip-hapus-docs/docker-compose.yml)
File orchestrator Docker Compose untuk mempermudah eksekusi container. Mendefinisikan port mapping (80 & 443) serta volume persistence untuk sertifikat SSL Caddy.

#### [MODIFY] [readme.md](file:///Users/bagaskorosaputro/Documents/GithubDesktop/sip-hapus-docs/readme.md)
Menambahkan instruksi deploy menggunakan Docker & Caddy ke dalam dokumentasi utama proyek.

---

## Verification Plan

### Manual Verification
- Memastikan berkas Dockerfile dan docker-compose.yml tidak memiliki kesalahan sintaksis.
- Memastikan Caddyfile terkonfigurasi dengan benar untuk penanganan static files (`file_server`).
