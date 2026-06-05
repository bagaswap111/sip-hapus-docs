# Panduan Instalasi & Konfigurasi

Halaman ini ditujukan bagi Developer dan Administrator IT untuk melakukan instalasi serta konfigurasi aplikasi di lingkungan pengembangan lokal (local development) maupun server produksi.

---

## Prasyarat Sistem (Prerequisites)

Sebelum memulai, pastikan server atau mesin lokal Anda telah memenuhi persyaratan berikut:

*   **PHP** `>= 8.1`
*   **Composer** `>= 2.0`
*   **Node.js & NPM** (untuk kompilasi aset Frontend dengan Vite)
*   **Database**: MySQL 8.x / PostgreSQL / SQLite
*   **Ekstensi PHP Wajib**: `GD`, `Imagick`, `DOM`, `XML`, `ZIP`

---

## Langkah-Langkah Instalasi

Jalankan perintah-perintah berikut di terminal Anda secara berurutan:

### 1. Clone Repositori & Masuk ke Folder Project
```bash
git clone https://github.com/brianwibowo/bapenda_jawa_tengah.git
cd bapenda_jawa_tengah
```

### 2. Instalasi Dependensi (PHP & Javascript)
```bash
composer install
npm install
```

### 3. Konfigurasi Environment File
Salin file template `.env.example` menjadi `.env`:
```bash
cp .env.example .env
```
Buka file `.env` menggunakan teks editor Anda dan sesuaikan pengaturan koneksi database Anda:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=bapenda_jawa_tengah
DB_USERNAME=root
DB_PASSWORD=your_password
```

### 4. Generate Application Key
```bash
php artisan key:generate
```

### 5. Migrasi & Seeding Wilayah (IndoRegion)
Sistem menggunakan paket `indoregion` untuk mengelola data wilayah administratif di Indonesia. Jalankan migrasi dan seeder wilayah secara berurutan:
```bash
php artisan migrate
php artisan indoregion:publish
composer dump-autoload
php artisan db:seed --class=IndoRegionSeeder
```

### 6. Seeding Data Awal & Hak Akses (RBAC)
Jalankan seeder utama untuk membuat roles, permissions, dan akun instansi bawaan (default):
```bash
php artisan db:seed
```

> [!NOTE]
> Seeder utama akan membuat akun pengujian bawaan untuk masing-masing instansi. Detail akun uji coba default dapat dilihat di file `README.md` pada repositori.

### 7. Konfigurasi Symbolic Link Storage
Sistem menggunakan `Spatie Media Library` yang membutuhkan symbolic link agar dokumen unggahan wajib pajak dapat diakses secara publik:
```bash
php artisan storage:link
```

### 8. Menjalankan Aplikasi
Jalankan compiler aset frontend dan local development server di dua terminal yang berbeda:

**Terminal 1 (Vite Asset Compiler):**
```bash
npm run dev
```

**Terminal 2 (Laravel Development Server):**
```bash
php artisan serve
```

Aplikasi kini dapat diakses melalui browser Anda di tautan `http://127.0.0.1:8000`.
