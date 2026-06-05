# Panduan Petugas Instansi

Dokumen ini menjelaskan alur kerja dan langkah operasional bagi petugas dari masing-masing instansi terkait (Samsat, Polda, Bapenda, dan Jasa Raharja).

---

## 1. Alur Kerja Kolaboratif (Workflow)

Sistem bekerja berdasarkan alur persetujuan terdistribusi antar-instansi:

```
[ Wajib Pajak ] --(Pengajuan)--> [ Samsat ] --(Surat Pengajuan/SP)--> [ Polda ]
                                                                        |
                                                   +--------------------+--------------------+
                                                   | (Pemeriksaan Paralel)                   |
                                                   v                                         v
                                             [ Bapenda ]                               [ Jasa Raharja ]
                                          (Persetujuan Pajak)                       (Persetujuan SWDKLLJ)
                                                   |                                         |
                                                   +--------------------+--------------------+
                                                                        v
                                                            [ Penerbitan 3 SK ]
                                                        (Polda, Bapenda, Jasa Raharja)
                                                                        |
                                                                        v
                                                                    [ Selesai ]
```

---

## 2. Petunjuk Operasional per Peran (Role)

### A. Petugas Samsat (Verifikator Awal)
Petugas Samsat bertindak sebagai gerbang pertama penyaringan berkas pengajuan:
1.  Masuk ke dashboard dengan akun **Petugas Samsat / Admin Cabang**.
2.  Buka menu **Manajemen Pengajuan** dan cari berkas berstatus **Pengajuan**.
3.  Periksa kecocokan data fisik kendaraan, nomor rangka, nomor mesin, dan keabsahan lampiran dokumen (KTP, STNK, BPKB, foto fisik).
4.  **Jika dokumen salah/kurang**:
    *   Tulis alasan penolakan pada kolom **Catatan Internal/Revisi**.
    *   Ubah status kendaraan menjadi **Ditolak** (wajib pajak akan mendapatkan notifikasi untuk merevisi berkas).
5.  **Jika dokumen lengkap & sah**:
    *   Centang persetujuan berkas.
    *   Ubah status kendaraan menjadi **Diproses**.
    *   Sistem akan otomatis membuat **Surat Pengajuan (SP)** digital untuk diteruskan ke Polda.

---

### B. Petugas Polda (Regident Ditlantas)
Polda bertanggung jawab memvalidasi keabsahan hukum kendaraan dari catatan kepolisian:
1.  Masuk menggunakan akun **Petugas Polda / Regident**.
2.  Buka menu **Persetujuan Surat Pengajuan (SP)**.
3.  Verifikasi status blokir atau catatan kriminalitas terkait nomor kendaraan tersebut.
4.  Jika aman, berikan status **Approved / Disetujui** pada SP Polda.
5.  Sistem secara otomatis akan meneruskan berkas tersebut ke pihak Bapenda dan Jasa Raharja secara paralel untuk pengecekan status keuangan.
6.  **Penerbitan SK**: Setelah Bapenda dan Jasa Raharja memberikan persetujuan keuangan, masuk kembali ke menu detail kendaraan, klik **Generate SK Polda** (sistem membuat draft PDF). Cetak berkas tersebut, tandatangani (manual atau TTE), lalu unggah hasil scan ke kolom **Lampiran SK Polda**.

---

### C. Petugas Bapenda (Pemeriksa Pajak)
Bapenda bertugas memverifikasi pelunasan Pajak Kendaraan Bermotor (PKB):
1.  Masuk menggunakan akun **Petugas Bapenda**.
2.  Buka menu **Persetujuan SP Bapenda**.
3.  Periksa catatan pembayaran PKB kendaraan terkait.
4.  Jika seluruh kewajiban pajak lunas, klik **Setujui Surat Pengajuan**.
5.  Klik **Generate SK Bapenda**, tandatangani dokumen pembebasan pajak tersebut, lalu unggah kembali scan dokumennya ke kolom **Lampiran SK Bapenda**.

---

### D. Petugas Jasa Raharja (Pemeriksa SWDKLLJ)
Jasa Raharja memverifikasi iuran Sumbangan Wajib Dana Kecelakaan Lalu Lintas Jalan (SWDKLLJ):
1.  Masuk menggunakan akun **Petugas Jasa Raharja**.
2.  Buka menu **Persetujuan SP Jasa Raharja**.
3.  Periksa catatan iuran SWDKLLJ kendaraan.
4.  Jika iuran lunas atau disetujui untuk dihapus, klik **Setujui Surat Pengajuan**.
5.  Klik **Generate SK Jasa Raharja**, tandatangani dokumen pembebasan asuransi tersebut, lalu unggah kembali scan dokumennya ke kolom **Lampiran SK Jasa Raharja**.

---

## 3. Tahap Penyelesaian (Finalize)

Setelah **3 SK Resmi** (SK Polda, SK Bapenda, dan SK Jasa Raharja) selesai diunggah secara lengkap oleh masing-masing instansi:
1.  Sistem secara otomatis mengubah status pengajuan kendaraan menjadi **Selesai**.
2.  Wajib Pajak dapat mengunduh berkas rekapan dan salinan digital ketiga SK tersebut sebagai bukti hukum yang sah bahwa data registrasi kendaraan telah resmi dihapus dari server nasional.
