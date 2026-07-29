## Registrasi Akun Wajib Pajak Baru

### Deskripsi
Fitur ini memungkinkan pengguna baru untuk membuat akun sebagai Wajib Pajak pada sistem.

### Prasyarat
- Belum memiliki akun terdaftar
- Memiliki data diri yang valid (Nama, Email, NIK)

### Langkah-Langkah

**Langkah 1 — Akses Halaman Registrasi**

Navigasi ke halaman registrasi melalui tulisan "Daftar Akun Pengusul".

![Halaman register](Images/autentikasi-1_1.png)

**Langkah 2 — Isi Formulir Registrasi**

Lengkapi seluruh kolom yang tersedia dengan data yang valid:

| Kolom | Keterangan |
|---|---|
| **Nama** | Nama lengkap sesuai identitas |
| **Email** | Alamat email aktif yang dapat diakses |
| **Nomor Hp** | Nomor telepon aktif |
| **Domisili** | Kota / kabupaten domisili |
| **Password** | Kata sandi minimal 8 karakter |
| **Konfirmasi Password** | Ulangi kata sandi yang sama |

> ⚠️ **Pastikan** email yang digunakan adalah email aktif, karena akan digunakan untuk verifikasi akun.

![Halaman register](Images/autentikasi-1_2.png)

**Langkah 3 — Kirim Formulir**

Klik tombol **Daftar Sekarang** untuk menyelesaikan proses pendaftaran.

![tombol daftar](Images/autentikasi-1_3.png)

### Hasil yang Diharapkan
- Akun berhasil dibuat dan sistem menampilkan pesan konfirmasi.
- Pengguna diarahkan ke halaman login atau dashboard.

---
## Login Pengguna (Semua Role)

### Deskripsi
Fitur ini memungkinkan pengguna yang sudah terdaftar untuk masuk ke dalam sistem sesuai role masing-masing.

### Prasyarat
- Akun sudah terdaftar dan terverifikasi

### Langkah-Langkah

**Langkah 1 — Akses Halaman Login**

Buka browser dan navigasi ke halaman:
```
/login
```

![Halaman login](Images/autentikasi-2_1.png)

**Langkah 2 — Masukkan Kredensial**

Isi kolom berikut dengan data yang valid:

| Kolom | Keterangan |
|---|---|
| **Email** | Email yang digunakan saat registrasi |
| **Password** | Kata sandi akun |

**Langkah 3 — Masuk ke Sistem**

Klik tombol **Masuk Sekarang** untuk mengakses sistem.

![tombol masuk](Images/autentikasi-2_3.png)

### Hasil yang Diharapkan
- Pengguna berhasil masuk dan diarahkan ke dashboard sesuai role (Wajib Pajak, Admin, dll).

---
## Lupa Password & Reset Password

### Deskripsi
Fitur ini memungkinkan pengguna yang lupa kata sandi untuk mengatur ulang password melalui email terdaftar.

### Prasyarat
- Akun dengan email valid sudah terdaftar di sistem

### Langkah-Langkah

**Langkah 1 — Akses Fitur Lupa Password**

Di halaman `/login`, klik tautan **Forgot your password?**

![Forgot password 1](Images/autentikasi-3_1.png)

**Langkah 2 — Kirim Tautan Reset**

Masukkan alamat email yang terdaftar, lalu klik tombol **Email Password Reset Link**.

![Forgot password 2](Images/autentikasi-3_2.png)

> 📧 Sistem akan mengirimkan email berisi tautan reset password ke alamat yang dimasukkan.

**Langkah 3 — Buka Tautan Reset**

Buka email masuk, lalu klik tautan reset password yang diterima.

> ⚠️ Tautan reset biasanya memiliki batas waktu. Segera gunakan sebelum kedaluwarsa.

**Langkah 4 — Atur Password Baru**

Isi kolom berikut, lalu klik tombol **Reset Password**:

| Kolom | Keterangan |
|---|---|
| **Password Baru** | Kata sandi baru yang diinginkan |
| **Konfirmasi Password** | Ulangi kata sandi baru |

### Hasil yang Diharapkan
- Password berhasil diperbarui dan pengguna dapat login menggunakan password baru.

---
## Logout Pengguna

### Deskripsi
Fitur ini memungkinkan pengguna untuk keluar dari sesi aktif secara aman.

### Prasyarat
- Pengguna sedang dalam kondisi login aktif

### Langkah-Langkah

**Langkah 1 — Logout dari Sistem**

Klik tombol atau menu **Logout** yang tersedia di halaman (biasanya di pojok kanan atas atau menu navigasi).

![Logout](Images/autentikasi-4_1.png)

### Hasil yang Diharapkan
- Sesi pengguna berakhir dan sistem mengarahkan kembali ke halaman `/login`.

> 💡 Selalu lakukan logout setelah selesai menggunakan sistem, terutama pada perangkat yang digunakan bersama.
