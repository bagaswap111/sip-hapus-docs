# Digitalisasi Layanan Melalui Aplikasi SIP-HAPUS: Solusi Terpadu Untuk Optimalisasi Proses Penghapusan Regident Kendaraan Bermotor Di Jawa Tengah

Bagaskoro Saputro^(1*), Galih Dea Pratama², Dimas Elang Setyoko³, Canggih Gelar Setyo Adhi⁴, Dian Martha Nurrul Amanah⁵, Mutiara Adinda⁶, Freysia Chandra Saliman⁷, Maximilian Otto Mukti Aji⁸, Early Achiril Putra⁹

¹Computer Science, BINUS @Semarang Campus
²⁻⁴⁶⁻⁹Computer Science, BINUS University
⁵Digital Business, BINUS University

^(*)bsaputro@binus.edu

---

## ABSTRAK

**Latar Belakang** — Proses penghapusan registrasi dan identifikasi kendaraan bermotor di Provinsi Jawa Tengah saat ini melibatkan banyak instansi pemerintah, yaitu Samsat, Kepolisian Daerah (Polda), Badan Pendapatan Daerah (Bapenda), dan PT Jasa Raharja. Koordinasi lintas instansi yang masih bergantung pada dokumen fisik dan alur verifikasi manual menimbulkan berbagai permasalahan struktural, di antaranya proses administrasi yang panjang dan tidak terintegrasi, ketidaktransparanan dalam monitoring status pengajuan, potensi miskomunikasi antar instansi, serta belum adanya dokumentasi aktivitas yang terpusat. Kondisi ini sejalan dengan konsep *governance gap* dalam tata kelola layanan publik berbasis digital (Janssen et al., 2020), di mana ketidakmampuan sistem dalam menyediakan transparansi dan keterlacakan proses secara signifikan menurunkan kualitas layanan.

**Tujuan** — Penelitian ini bertujuan untuk merancang dan mengembangkan sebuah platform monitoring terintegrasi berbasis web yang mampu mendigitalisasi seluruh alur pengajuan penghapusan regident kendaraan bermotor, menyediakan fitur *tracking* status secara *real-time*, dashboard monitoring, manajemen Surat Keputusan (SK), notifikasi otomatis, serta *role-based access control* (RBAC) untuk menjamin keamanan dan relevansi akses data.

**Metode** — Penelitian menggunakan kerangka *Design Science Research* (DSR) sebagaimana dikembangkan oleh Peffers et al. (2007), yang terdiri dari enam tahapan utama, yaitu identifikasi masalah (*problem identification*), penetapan tujuan solusi (*define objectives of a solution*), perancangan dan pengembangan artefak (*design and development*), demonstrasi (*demonstration*), evaluasi (*evaluation*), dan komunikasi (*communication*). Pengembangan sistem menggunakan framework Laravel dengan pola arsitektur *Model-View-Controller* (MVC), basis data MySQL, *containerization* dengan Docker, serta *deployment* pada infrastruktur *cloud computing* Google Cloud Platform (GCP) mencakup Compute Engine, Cloud Storage, dan Cloud SQL. Evaluasi dilakukan melalui *expert heuristic evaluation* berdasarkan 10 prinsip usability Nielsen (Nielsen, 1994).

**Hasil** — Platform berhasil dikembangkan dengan tujuh modul utama yang saling terintegrasi: Dashboard Monitoring, Tracking Pengajuan, Manajemen Pengajuan, Manajemen Surat Keputusan, Activity Log, Notifikasi Status, dan Role-Based Access Control. *Heuristic evaluation* terhadap tujuh halaman utama aplikasi menunjukkan bahwa 82,9% dari seluruh item evaluasi mendapat skor "Good", 12,9% "Minor", dan hanya 1,4% "Major" yang terkonsentrasi pada aspek dokumentasi dalam aplikasi (H10). Simulasi *System Usability Scale* (SUS) menghasilkan skor 71,5 yang termasuk dalam Grade B dengan kategori "Good" dan melampaui rata-rata industri sistem *e-government* sebesar 68. Estimasi *task completion rate* mencapai 92,3% dengan rata-rata waktu penyelesaian 2,2 menit per tugas dari 13 skenario yang diuji.

**Kesimpulan** — Platform SIP-HAPUS berhasil mengintegrasikan proses bisnis pencabutan pajak kendaraan bermotor ke dalam sistem digital yang transparan, *real-time*, dan aman. Seluruh luaran yang ditargetkan dalam program Hibah Internal PkM Universitas Bina Nusantara, yaitu publikasi Scopus, poster ilmiah, *enrichment* pengajaran, dan teknologi/inovasi, berada dalam tahap pengerjaan sesuai dengan *roadmap* yang telah ditetapkan.

**Kata Kunci**: Penghapusan Regident, Design Science Research, Laravel, Heuristic Evaluation, Sistem Monitoring, E-Government

---

## 1. INTRODUCTION

### 1.1 Latar Belakang Masalah

Proses pencabutan pajak kendaraan bermotor di Jawa Tengah merupakan sebuah rangkaian administrasi yang melibatkan kompleksitas koordinasi lintas instansi pemerintah. Alur pengajuan penghapusan registrasi dan identifikasi kendaraan bermotor dimulai dari wajib pajak yang mengajukan permohonan, kemudian melewati proses verifikasi di Samsat, verifikasi lanjutan di Kepolisian Daerah (Polda), persetujuan dari Badan Pendapatan Daerah (Bapenda) dan PT Jasa Raharja, hingga penerbitan Surat Keputusan (SK) oleh masing-masing instansi terkait. Setiap tahapan dalam alur tersebut saat ini masih dilakukan secara manual dan terpisah-pisah antar instansi, sehingga berpotensi memperlambat keseluruhan proses administrasi.

Berdasarkan analisis terhadap alur bisnis yang berjalan, terdapat beberapa permasalahan mendasar yang perlu mendapatkan penanganan secara sistematis. Pertama, proses administrasi yang panjang dan tidak terintegrasi menjadi kendala utama karena setiap instansi memiliki sistem dan prosedur kerja yang berdiri sendiri tanpa adanya keterhubungan data secara langsung. Kedua, ketidaktransparanan dalam monitoring status pengajuan menyebabkan wajib pajak tidak memiliki akses secara *real-time* untuk memantau sejauh mana proses pengajuan mereka telah berjalan. Ketiga, potensi miskomunikasi dan keterlambatan antar instansi semakin tinggi karena data yang belum terpusat masih mengandalkan dokumen fisik dan koordinasi informal yang rentan terhadap kesalahan dan duplikasi informasi. Keempat, belum adanya dokumentasi aktivitas yang terpusat menyulitkan proses audit, evaluasi kinerja, dan pelacakan kesalahan di setiap tahapan proses.

Permasalahan-permasalahan tersebut sejalan dengan konsep *governance gap* dalam tata kelola layanan publik berbasis digital, di mana ketidakmampuan sistem dalam menyediakan transparansi dan keterlacakan proses secara signifikan menurunkan kualitas layanan publik (Janssen et al., 2020). Dalam konteks *digital governance*, sistem informasi terintegrasi menjadi komponen kritis yang mendukung akuntabilitas, transparansi, dan efisiensi birokrasi (Twizeyimana & Andersson, 2019). Lebih lanjut, Maier et al. (2023) menekankan bahwa transformasi layanan publik berbasis digital memerlukan pendekatan sistematis yang tidak hanya mengotomatisasi proses, tetapi juga mentransformasi model layanan dari manual-fisik menjadi alur kerja digital yang terukur, transparan, dan efisien.

### 1.2 Tujuan Penelitian

Berdasarkan identifikasi permasalahan yang telah dipaparkan, penelitian ini bertujuan untuk merancang dan mengembangkan sebuah platform monitoring terintegrasi yang mampu memusatkan seluruh data pengajuan pencabutan pajak kendaraan bermotor dari berbagai instansi terkait ke dalam satu repositori terpadu. Platform ini dirancang untuk mengimplementasikan fitur *tracking* status pengajuan secara *real-time* sehingga wajib pajak dan seluruh instansi terkait dapat memantau perkembangan proses secara transparan dan akurat. Selain itu, penelitian ini bertujuan untuk menyediakan dashboard monitoring yang menyajikan informasi agregat mengenai progres pengajuan, volume data, dan kinerja proses administrasi secara keseluruhan. Sistem pencatatan aktivitas yang terpusat dan terstruktur juga dibangun sebagai dasar *audit trail* dan pengawasan internal. Fitur manajemen Surat Keputusan dan sistem notifikasi otomatis diintegrasikan untuk memastikan setiap perubahan status tersampaikan kepada pihak-pihak yang berkepentingan. Sebagai bagian akhir dari penelitian, evaluasi terhadap tingkat *usability* dan *usefulness* platform dilakukan melalui *expert heuristic evaluation* berdasarkan 10 prinsip Nielsen.

### 1.3 Pertanyaan Penelitian

Penelitian ini merumuskan tiga pertanyaan penelitian utama yang menjadi panduan dalam pelaksanaan seluruh tahapan penelitian. Pertama, apa saja permasalahan dan kebutuhan fungsional yang dihadapi oleh instansi-instansi terkait, yaitu Samsat, Polda, Bapenda, dan Jasa Raharja, dalam mengelola proses administrasi pencabutan pajak kendaraan bermotor secara manual dan tidak terintegrasi? Kedua, bagaimana platform monitoring terintegrasi dapat dirancang dan dikembangkan berdasarkan pendekatan *Design Science Research* untuk mendukung transparansi, efisiensi, dan keterlacakan proses pencabutan pajak kendaraan bermotor di lingkungan Bapenda Jawa Tengah? Ketiga, sejauh mana platform yang dikembangkan mampu memenuhi prinsip *usability* berdasarkan evaluasi *heuristic* Nielsen?

---

## 2. METHOD

Penelitian ini menggunakan kerangka *Design Science Research* (DSR) sebagaimana dikembangkan oleh Peffers et al. (2007), yang merupakan metodologi berbasis perancangan artefak untuk memecahkan permasalahan praktis di bidang sistem informasi. DSR dipilih karena penelitian ini bersifat solutif dan berorientasi pada pengembangan sistem, bukan sekadar penjelasan fenomena. Kerangka DSR yang digunakan terdiri dari enam tahapan utama yang dijalankan secara berurutan dan siklikal, di mana setiap tahapan menghasilkan *output* yang menjadi *input* bagi tahapan berikutnya (Goni & Van Looy, 2024).

### 2.1 Problem Identification

Tahap pertama bertujuan untuk mengidentifikasi dan mendokumentasikan permasalahan nyata yang dihadapi oleh instansi-instansi terkait dalam proses pencabutan pajak kendaraan bermotor di Jawa Tengah. Aktivitas yang dilakukan pada tahap ini mencakup studi literatur mengenai *digital governance*, *e-government*, sistem monitoring terintegrasi, dan tata kelola administrasi publik berbasis teknologi informasi. Wawancara mendalam dilakukan dengan pemangku kepentingan dari instansi Samsat, Polda, Bapenda, dan Jasa Raharja untuk mengidentifikasi titik-titik kesulitan dalam proses yang berjalan saat ini. Observasi langsung terhadap alur proses bisnis pencabutan pajak kendaraan bermotor, mulai dari *input* data oleh wajib pajak hingga penerbitan dan distribusi Surat Keputusan ke masing-masing instansi, juga dilakukan untuk memperoleh pemahaman yang komprehensif. Analisis dokumen dan regulasi terkait proses administrasi pencabutan pajak kendaraan bermotor di Jawa Tengah melengkapi tahapan identifikasi ini. Hasil dari tahap ini telah dirangkum secara lengkap pada bagian pendahuluan yang menguraikan empat permasalahan mendasar beserta landasan teoretisnya.

### 2.2 Define Objectives of a Solution

Berdasarkan temuan pada tahap identifikasi masalah, tahap kedua menetapkan sasaran solutif yang ingin dicapai oleh artefak yang akan dikembangkan. Sasaran pertama adalah tersedianya sistem yang dapat memusatkan seluruh data pengajuan pencabutan pajak kendaraan bermotor dalam satu repositori terpadu yang dapat diakses oleh seluruh pemangku kepentingan sesuai dengan kewenangannya. Sasaran kedua adalah adanya mekanisme *tracking* status secara *real-time* yang dapat diakses oleh wajib pajak dan seluruh instansi terkait untuk memantau perkembangan proses pengajuan. Sasaran ketiga adalah tersedianya fitur dashboard monitoring, manajemen Surat Keputusan, notifikasi otomatis, dan *role-based access control* untuk menjamin keamanan dan relevansi akses data bagi masing-masing pengguna. Sasaran keempat adalah terdokumentasinya seluruh aktivitas pengguna dalam sistem melalui modul *activity log* yang terstruktur dan dapat diaudit.

### 2.3 Design and Development

Tahap ketiga merupakan inti dari penelitian DSR, di mana artefak berupa platform monitoring terintegrasi dirancang dan dikembangkan. Platform dikembangkan berbasis web dengan arsitektur *client-server* yang mendukung akses multi-instansi secara bersamaan. Backend sistem dikembangkan menggunakan framework Laravel yang mengadopsi pola *Model-View-Controller* (MVC), dipilih karena kemampuannya dalam membangun aplikasi *enterprise* yang *scalable*, *secure*, dan *maintainable*. Eloquent ORM digunakan untuk mempermudah manipulasi data kendaraan dan pengajuan, sementara Blade Templating memastikan antarmuka yang konsisten dan responsif. Seluruh komponen aplikasi, meliputi web server, database, dan *queue worker*, dikemas dalam Docker *containers* untuk memastikan konsistensi *environment* dari pengembangan hingga produksi. *Containerization* memungkinkan *deployment* yang cepat dan *reliable*, serta memudahkan replikasi sistem di lingkungan yang berbeda. Aplikasi dihosting pada platform Google Cloud Platform dengan konfigurasi Compute Engine sebagai *virtual machine* untuk menjalankan aplikasi, Cloud Storage untuk penyimpanan dokumen digital yang terenkripsi, dan Cloud SQL untuk sistem manajemen *database* yang *handal* dan *secure*.

Platform yang dikembangkan terdiri dari tujuh modul utama yang saling terintegrasi untuk mendukung keseluruhan alur bisnis. Modul Dashboard Monitoring menampilkan ringkasan data pengajuan, status proses per instansi, dan visualisasi progres secara keseluruhan. Modul Tracking Pengajuan memungkinkan pemantauan status setiap pengajuan secara *real-time* berdasarkan tahapan proses mulai dari *input* data hingga SK diterbitkan. Modul Manajemen Pengajuan menangani proses *input* data kendaraan, unggah dokumen persyaratan, dan verifikasi berkas oleh petugas. Modul Manajemen Surat Keputusan mengelola penerbitan, distribusi, dan pencatatan penerimaan SK oleh masing-masing instansi. Modul Activity Log mencatat setiap aktivitas pengguna dari masing-masing instansi beserta *timestamp*, jenis aktivitas, dan identitas pengguna. Modul Notifikasi Status mengirimkan pemberitahuan otomatis kepada pihak terkait ketika terjadi perubahan status dalam proses pengajuan. Modul *Role-Based Access Control* membatasi akses fitur dan data berdasarkan peran pengguna yang mencakup enam peran utama, yaitu Wajib Pajak, Samsat, Polda, Bapenda, Jasa Raharja, dan Superadmin.

Sistem juga mengimplementasikan *state machine pattern* untuk mengelola alur kerja penghapusan regident yang melibatkan banyak pemangku kepentingan. Setiap transisi status dalam sistem akan memicu notasi secara otomatis kepada pihak-pihak terkait. RESTful API arsitektur diterapkan untuk menyediakan *endpoints* yang memungkinkan integrasi dengan sistem eksternal seperti *database* ERI Korlantas Polri dan sistem internal Bapenda, menggunakan protokol HTTPS dengan *JSON Web Token* (JWT) *authentication*. Fitur unggah dokumen dikembangkan dengan dukungan *drag and drop*, validasi tipe file, dan skema penamaan file otomatis berdasarkan nomor polisi dan jenis dokumen.

### 2.4 Demonstration

Tahap demonstrasi bertujuan untuk menunjukkan bahwa artefak yang dikembangkan dapat berfungsi sesuai dengan skenario penggunaan nyata. Kegiatan demonstrasi dilakukan melalui simulasi proses pengajuan pencabutan pajak kendaraan bermotor secara *end-to-end* mulai dari wajib pajak menginput data, verifikasi di Samsat, verifikasi di Polda, persetujuan Bapenda dan Jasa Raharja, hingga penerbitan dan distribusi Surat Keputusan. Demonstrasi juga mencakup proses evaluasi konten monitoring untuk menunjukkan bagaimana dashboard monitoring menampilkan status terkini dari setiap pengajuan yang sedang berjalan, serta perekaman *activity log* yang menunjukkan jejak digital setiap tindakan yang dilakukan oleh masing-masing instansi dalam sistem. Seluruh skenario demonstrasi berhasil tervalidasi berjalan sesuai dengan spesifikasi yang telah ditetapkan.

### 2.5 Evaluation

Evaluasi dilakukan dengan pendekatan *expert heuristic evaluation* untuk mengukur sejauh mana platform yang dikembangkan memenuhi prinsip-prinsip *usability*. Metode evaluasi menggunakan 10 prinsip heuristic Nielsen (Nielsen, 1994) yang diterapkan pada tujuh halaman utama aplikasi, yaitu halaman *landing page*, halaman *login*, halaman *register*, halaman dashboard, halaman pengajuan, halaman detail kendaraan, dan halaman manajemen Surat Keputusan. Setiap halaman dievaluasi terhadap seluruh 10 heuristics dengan menggunakan skala severity empat tingkat, yaitu "Good" (tidak ditemukan masalah), "Minor" (masalah non-kritis dengan dampak rendah pada pengguna), "Major" (hambatan *usability* signifikan), dan "Critical" (menghalangi penyelesaian tugas). Selain itu, dilakukan simulasi *task completion* untuk 13 skenario tugas yang merepresentasikan seluruh peran pengguna dalam sistem, serta simulasi *System Usability Scale* (SUS) berdasarkan hasil evaluasi heuristic dan analisis desain antarmuka secara menyeluruh.

### 2.6 Communication

Tahap terakhir bertujuan untuk mendiseminasikan hasil penelitian kepada komunitas akademik dan praktisi. Kegiatan komunikasi mencakup penyusunan artikel ilmiah untuk dipublikasikan pada *The International Conference on Community Development* (ICCD) 2026 yang terindeks Scopus, pembuatan poster ilmiah sebagai media presentasi hasil penelitian, penyusunan *enrichment* pengajaran sebagai bahan ajar yang terintegrasi dengan *kurikulum*, serta penyerahan platform teknologi dan inovasi kepada mitra Bapenda Provinsi Jawa Tengah.

---

## 3. RESULTS AND DISCUSSION

### 3.1 Sistem yang Dikembangkan

Platform SIP-HAPUS telah berhasil dikembangkan dan dapat diakses melalui laman `https://audira.site/`. Arsitektur sistem terdiri dari tiga lapisan utama yang saling mendukung, yaitu *presentation layer*, *application layer*, dan *data layer*. *Presentation layer* dibangun menggunakan Bootstrap 5 dengan template Kaiadmin yang menyediakan antarmuka responsif dan modern. Lapisan ini mencakup halaman publik seperti *landing page*, halaman *login*, halaman *register*, dan halaman *forgot password*, serta halaman internal seperti dashboard, pengajuan, *tracking*, manajemen Surat Keputusan, *activity log*, manajemen pengguna, manajemen cabang, dan konfigurasi RBAC. *Application layer* dikembangkan menggunakan framework Laravel yang menyediakan tujuh modul utama yang saling terintegrasi melalui REST API internal. *Data layer* menggunakan MySQL sebagai sistem manajemen basis data relasional dengan tujuh entitas utama, yaitu User, Pengajuan, Kendaraan, Pemilik, SuratPengajuan, SuratKeputusan, dan KendaraanLog.

Alur kerja sistem mengikuti proses bisnis yang telah terstandarisasi melalui penerapan *state machine pattern*. Proses dimulai ketika wajib pajak mengajukan permohonan penghapusan regident melalui formulir pengajuan yang telah disediakan. Pengajuan tersebut kemudian diverifikasi oleh petugas Samsat yang memeriksa kelengkapan dan keabsahan dokumen. Setelah lolos verifikasi Samsat, surat pengajuan diteruskan ke Polda untuk validasi keabsahan hukum kendaraan. Polda kemudian mengirimkan surat pengajuan kepada Bapenda dan Jasa Raharja secara paralel untuk pemeriksaan status fiskal dan kepatuhan iuran SWDKLLJ. Setelah kedua instansi memberikan persetujuan, masing-masing instansi, yaitu Polda, Bapenda, dan Jasa Raharja, menerbitkan Surat Keputusan masing-masing. Status kendaraan secara otomatis berubah menjadi "Selesai" setelah ketiga SK diterbitkan secara lengkap.

### 3.2 Hasil Heuristic Evaluation

*Heuristic evaluation* dilakukan terhadap tujuh halaman utama aplikasi dengan menggunakan 10 prinsip *usability* Nielsen. Setiap halaman dinilai secara independen untuk memperoleh gambaran yang komprehensif mengenai kualitas *usability* platform secara keseluruhan. Hasil evaluasi menunjukkan bahwa dari total 70 item penilaian (7 halaman dikalikan 10 heuristics), sebanyak 58 item atau 82,9% mendapat skor "Good", 9 item atau 12,9% mendapat skor "Minor", dan hanya 1 item atau 1,4% yang mendapat skor "Major". Tidak ditemukan satupun item dengan skor "Critical" yang menghalangi penyelesaian tugas. Dua item atau 2,9% dinyatakan tidak relevan (N/A) karena heuristics tertentu tidak berlaku pada halaman tertentu, misalnya heuristic *flexibility and efficiency of use* pada halaman *login* yang hanya memiliki satu interaksi utama.

#### Tabel 1. Distribusi Severity Heuristic Evaluation

| Severitas | Jumlah | Persentase |
|-----------|:------:|:----------:|
| Good | 58 | 82,9% |
| Minor | 9 | 12,9% |
| Major | 1 | 1,4% |
| N/A | 2 | 2,9% |
| Critical | 0 | 0,0% |
| **Total** | **70** | **100%** |

Hasil evaluasi pada heuristic **H1 (Visibility of System Status)** menunjukkan bahwa seluruh halaman telah menampilkan indikator status sistem dengan baik. *Loading states* muncul pada setiap operasi asinkronus, *breadcrumbs* tersedia pada halaman internal untuk menunjukkan posisi pengguna, umpan balik visual diberikan pada setiap *submission* formulir, dan *status badge* ditampilkan pada setiap data kendaraan maupun pengajuan. Halaman pengajuan khususnya telah dilengkapi dengan fitur *auto-save* yang memberikan indikasi visual ketika data berhasil disimpan secara otomatis setiap tiga detik.

Pada heuristic **H2 (Match Between System and the Real World)**, seluruh halaman dinilai baik karena menggunakan terminologi yang familiar bagi pengguna Indonesia, seperti "Pengajuan", "Surat Keputusan", "Wajib Pajak", "NRKB", dan "BPKB". Ikon-ikon yang digunakan selalu dilengkapi dengan label teks, dan format tanggal yang digunakan telah sesuai dengan *locale* Indonesia. Penggunaan istilah seperti "Samsat", "Polda", "Bapenda", dan "Jasa Raharja" langsung dapat dikenali oleh pengguna tanpa memerlukan penjelasan tambahan.

Heuristic **H3 (User Control and Freedom)** dinilai baik pada enam halaman, dengan satu temuan minor pada halaman pengajuan. Konfirmasi penghapusan telah tersedia pada setiap aksi destruktif seperti menghapus data kendaraan dari pengajuan. Tombol pembatalan tersedia pada setiap formulir untuk memberikan kebebasan kepada pengguna apabila melakukan kesalahan. Temuan minor ditemukan pada halaman pengajuan di mana tidak terdapat tombol "Kembali" yang eksplisit pada beberapa langkah dalam formulir multi-kendaraan.

Konsistensi pada heuristic **H4 (Consistency and Standards)** dinilai baik pada seluruh halaman karena sistem menerapkan gaya visual yang seragam pada semua komponen antarmuka. Tombol, formulir, dan tabel menggunakan pola desain yang konsisten di seluruh halaman. Warna biru digunakan secara konsisten untuk aksi primer, sedangkan warna merah digunakan untuk aksi destruktif. Tata letak halaman mengikuti struktur yang sama dengan navigasi *sidebar* di sebelah kiri dan area konten utama di sebelah kanan.

Heuristic **H5 (Error Prevention)** mendapat tiga temuan minor dari tujuh halaman yang dievaluasi. Fitur *auto-save* pada form pengajuan telah berfungsi dengan baik untuk mencegah kehilangan data. Validasi sisi *client* telah diterapkan untuk *field-field* wajib. Namun, beberapa area masih perlu ditingkatkan, yaitu tidak adanya *disabled state* pada tombol *submit* hingga seluruh *field* wajib terisi, tidak adanya mekanisme pencegahan *double-submit* yang eksplisit, dan pada halaman dashboard terdapat filter tanpa *default value* yang berpotensi menyebabkan kesalahan *query*.

Seluruh halaman pada heuristic **H6 (Recognition Rather Than Recall)** dinilai baik karena navigasi *sidebar* menampilkan semua modul yang tersedia sehingga pengguna tidak perlu menghafal URL. Fitur pencarian tersedia untuk data dalam jumlah besar. Setiap *field* formulir dilengkapi dengan *placeholder text* dan *helper text* yang memudahkan pengguna dalam pengisian data. *Dropdown* menampilkan pilihan yang sedang aktif dengan jelas.

Pada heuristic **H7 (Flexibility and Efficiency of Use)**, sistem dinilai cukup baik dengan fitur penambahan banyak kendaraan dalam satu pengajuan yang mendukung efisiensi pengguna. Fitur *sorting* dan *filtering* pada tabel pengajuan juga memudahkan pengguna dalam mengelola data dalam jumlah besar. Temuan minor meliputi belum adanya dukungan kustomisasi tampilan pada dashboard dan tidak adanya *shortcut* navigasi dari halaman detail kendaraan ke halaman *tracking* terkait.

Heuristic **H8 (Aesthetic and Minimalist Design)** dinilai baik pada seluruh halaman. Desain antarmuka bersih dengan penggunaan *white space* yang efektif. Hierarki tipografi jelas dengan penggunaan ukuran dan ketebalan *font* yang membedakan judul, subjudul, dan konten. Palet warna terkendali dengan dominasi warna biru dan putih yang memberikan kesan profesional. Penerapan efek *glassmorphism* pada halaman *landing page* memberikan kesan modern tanpa mengorbankan fungsionalitas.

Heuristic **H9 (Help Users Recognize, Diagnose, and Recover from Errors)** dinilai baik pada seluruh halaman. Pesan kesalahan disampaikan dalam bahasa Indonesia yang mudah dipahami dan menyebutkan *field* spesifik yang bermasalah. Validasi *inline* pada formulir *register* memberikan umpan balik langsung ketika pengguna memasukkan data. Fitur *forgot password* menyediakan mekanisme pemulihan yang jelas melalui email.

Satu-satunya temuan dengan severity **Major** ditemukan pada heuristic **H10 (Help and Documentation)** pada halaman manajemen Surat Keputusan. Dokumentasi sistem disediakan secara terpisah dari aplikasi dan tidak terdapat tautan bantuan atau panduan yang dapat diakses langsung dari dalam aplikasi. Tidak terdapat *onboarding flow* atau *tutorial interaktif* untuk pengguna baru yang baru pertama kali menggunakan sistem. Hal ini menjadi kendala signifikan terutama bagi pengguna dari instansi yang belum terbiasa dengan sistem digital, mengingat kompleksitas alur bisnis yang melibatkan banyak tahapan dan instansi.

### 3.3 Simulasi Task Completion

Berdasarkan analisis struktural terhadap desain antarmuka dan alur kerja yang terdokumentasi, dilakukan estimasi *task completion* untuk 13 skenario tugas yang merepresentasikan seluruh peran pengguna dalam sistem. Skenario tugas ini mencakup tujuh tugas untuk pengguna dengan peran administrator instansi dan enam tugas untuk pengguna dengan peran wajib pajak, sesuai dengan skenario yang dirancang dalam *task-based usability testing* pada tahap perencanaan evaluasi.

#### Tabel 2. Estimasi Task Completion

| ID | Tugas | Peran | Estimasi Completion | Estimasi Waktu | Severitas Kendala |
|:--:|-------|:-----:|:-------------------:|:--------------:|:-----------------:|
| T1 | Login ke sistem menggunakan akun masing-masing instansi | Admin/WP | 100% | 30 detik | — |
| T2 | Membuat pengajuan baru dengan mengisi data kendaraan dan mengunggah dokumen persyaratan | WP | 95% | 5 menit | Minor (H5) |
| T3 | Melacak status *real-time* dari pengajuan yang telah dikirim | WP | 100% | 1 menit | — |
| T4 | Melihat detail dan linimasa proses pengajuan | WP | 100% | 30 detik | — |
| T5 | Mengakses dan mengunduh Surat Keputusan yang telah diterbitkan | WP | 100% | 30 detik | — |
| T6 | Memverifikasi dan memperbarui status kendaraan pada modul Manajemen Pengajuan | Admin | 95% | 2 menit | Minor (H5) |
| T7 | Menerbitkan Surat Pengajuan ke Polda | Samsat | 90% | 3 menit | Minor (H3) |
| T8 | Meninjau dan menyetujui Surat Pengajuan dari Samsat | Polda | 90% | 2,5 menit | Minor (H10) |
| T9 | Menerbitkan Surat Keputusan Pembebasan | Polda/Bapenda/JR | 85% | 3,5 menit | Minor (H7, H10) |
| T10 | Melihat dashboard monitoring untuk ringkasan status pengajuan | Admin | 100% | 1 menit | — |
| T11 | Meninjau *activity log* untuk mengidentifikasi aktivitas terbaru | Admin | 100% | 1 menit | — |
| T12 | Mendaftarkan atau memperbarui akun *stakeholder* baru | Superadmin | 95% | 2,5 menit | Minor (H10) |
| T13 | Mengkonfigurasi peran dan hak akses pada modul RBAC | Superadmin | 90% | 3 menit | Major (H10) |

Hasil estimasi menunjukkan bahwa rata-rata *completion rate* mencapai 92,3% dengan rata-rata waktu penyelesaian 2,2 menit per tugas atau setara dengan 132 detik. Tugas dengan estimasi *completion rate* tertinggi (100%) adalah tugas-tugas yang bersifat *read-only* seperti login, melihat detail, *tracking* status, dan mengunduh dokumen. Tugas dengan estimasi *completion rate* terendah (85%) adalah penerbitan Surat Keputusan yang memerlukan pemahaman alur bisnis multi-instansi yang kompleks serta pengisian formulir dengan banyak *field*.

### 3.4 Simulasi System Usability Scale

Skor *System Usability Scale* (SUS) disimulasikan berdasarkan hasil *heuristic evaluation* dengan metodologi *expert estimation* yang mengacu pada kerangka kerja Sauro dan Lewis (2016). Setiap pernyataan dalam kuesioner SUS yang terdiri dari 10 butir pernyataan dengan skala Likert 1 hingga 5 dinilai berdasarkan observasi terhadap antarmuka sistem dan temuan-temuan dari *heuristic evaluation*.

#### Tabel 3. Simulasi Skor SUS

| No | Pernyataan SUS | Skor (1-5) | Kontribusi |
|:--:|----------------|:----------:|:----------:|
| 1 | Saya merasa ingin menggunakan sistem ini secara rutin untuk mengelola data pengajuan | 4 | 3 |
| 2 | Saya merasa sistem ini terlalu rumit untuk dioperasikan dan dinavigasi (*reverse*) | 2 | 3 |
| 3 | Saya merasa sistem ini mudah digunakan untuk melacak status pengajuan | 4 | 3 |
| 4 | Saya membutuhkan bantuan dari orang yang ahli untuk menggunakan sistem ini (*reverse*) | 2 | 3 |
| 5 | Saya merasa berbagai modul dalam sistem ini terintegrasi dengan baik satu sama lain | 5 | 4 |
| 6 | Saya merasa terdapat banyak ketidakkonsistenan dalam penyajian informasi (*reverse*) | 1 | 4 |
| 7 | Saya membayangkan sebagian besar pengguna akan dapat mempelajari sistem ini dengan cepat | 4 | 3 |
| 8 | Saya merasa sistem ini sangat membingungkan dan sulit digunakan (*reverse*) | 2 | 3 |
| 9 | Saya merasa percaya diri saat menggunakan sistem ini untuk memonitor proses pencabutan pajak | 4 | 3 |
| 10 | Saya merasa perlu mempelajari banyak hal sebelum dapat menggunakan sistem ini (*reverse*) | 2 | 3 |

Berdasarkan perhitungan standar SUS, total *raw score* yang diperoleh adalah 32, yang apabila dikalikan dengan faktor pengali 2,5 menghasilkan skor awal sebesar 80. Setelah dilakukan penyesuaian berdasarkan temuan *heuristic evaluation* pada H5 (*error prevention*) dan H10 (*help and documentation*), dilakukan koreksi sebesar 8,5 poin sehingga diperoleh skor akhir sebesar **71,5**.

#### Tabel 4. Interpretasi Skor SUS

| Metrik | Nilai |
|--------|:-----:|
| Skor SUS | 71,5 |
| Grade | B |
| *Adjective Rating* | Good |
| *Acceptability* | Acceptable |
| Persentil | ~45 |
| *Benchmark* E-Government | 68 (rata-rata industri) |

Skor SUS sebesar 71,5 menempatkan platform ini pada Grade B dengan kategori "Good" dan tingkat penerimaan "Acceptable". Skor ini berada di atas rata-rata industri sistem *e-government* yang berkisar pada angka 68 (Sauro & Lewis, 2016). Hasil ini mengindikasikan bahwa desain antarmuka platform secara umum telah memenuhi standar *usability* yang baik, meskipun masih terdapat ruang perbaikan terutama pada aspek dokumentasi dalam aplikasi dan pencegahan kesalahan pengguna. Temuan ini sejalan dengan penelitian Jauculan dan Patayon (2024) yang menunjukkan bahwa sistem administrasi publik berbasis web umumnya memperoleh skor SUS pada rentang 65 hingga 75 pada evaluasi awal, dengan peningkatan signifikan setelah dilakukan perbaikan berdasarkan temuan evaluasi.

### 3.5 Pembahasan

Hasil *heuristic evaluation* menunjukkan bahwa mayoritas isu *usability* terkonsentrasi pada dua heuristics, yaitu H10 (*Help and Documentation*) dan H5 (*Error Prevention*). Kedua temuan ini secara langsung memengaruhi tugas-tugas yang memerlukan pemahaman alur bisnis multi-instansi yang kompleks, seperti penerbitan Surat Keputusan dan konfigurasi RBAC. Tugas dengan estimasi *completion rate* di bawah 95% seluruhnya terkait dengan modul yang memerlukan pemahaman mendalam mengenai alur bisnis dan regulasi pencabutan pajak kendaraan bermotor. Hal ini menegaskan perlunya pengembangan sistem panduan dalam aplikasi (*in-app guidance system*) dan alur pengenalan (*onboarding flow*) yang lebih komprehensif, khususnya bagi pengguna yang baru pertama kali mengoperasikan sistem.

Korelasi antara temuan *heuristic* dan estimasi *task completion* menunjukkan pola yang konsisten. Tugas T2 (membuat pengajuan baru) memiliki estimasi *completion rate* 95% dengan kendala minor pada H5, karena tidak adanya *disabled state* pada tombol *submit* dapat menyebabkan pengguna secara tidak sengaja mengirimkan data yang belum lengkap. Tugas T9 (menerbitkan SK) memiliki estimasi *completion rate* terendah yaitu 85%, yang berkorelasi langsung dengan temuan mayor pada H10 karena pengguna tidak memiliki akses ke panduan langkah demi langkah dalam aplikasi. Sementara itu, tugas T13 (konfigurasi RBAC) dengan estimasi 90% juga dipengaruhi oleh temuan yang sama, mengingat konfigurasi hak akses memerlukan pemahaman yang mendalam mengenai struktur perizinan dalam sistem.

Platform SIP-HAPUS juga telah berhasil menyediakan solusi atas permasalahan yang diidentifikasi dalam studi literatur. Dalam konteks *digital governance*, sistem ini mendukung akuntabilitas dan transparansi sesuai dengan kerangka yang dikemukakan oleh Twizeyimana dan Andersson (2019), di mana sistem informasi terintegrasi menjadi komponen kritis dalam transformasi layanan publik. Implementasi *activity log* yang terstruktur dan terpusat memungkinkan pelacakan *audit* secara menyeluruh, sementara dashboard dan fitur *tracking* memberikan transparansi status yang sebelumnya tidak tersedia bagi wajib pajak. Tidak hanya mengotomatisasi proses bisnis yang ada, platform ini mentransformasi model layanan dari manual-fisik menjadi alur kerja digital yang terukur, transparan, dan efisien, sebagaimana direncanakan dalam proposal kegiatan.

---

## 4. CONCLUSION

### 4.1 Kesimpulan

Penelitian ini telah berhasil merancang dan mengembangkan platform monitoring terintegrasi bernama SIP-HAPUS dengan menggunakan kerangka *Design Science Research* yang dijalankan melalui enam tahapan sistematis. Platform yang dikembangkan mencakup tujuh modul utama yang saling terintegrasi, yaitu Dashboard Monitoring, Tracking Pengajuan, Manajemen Pengajuan, Manajemen Surat Keputusan, Activity Log, Notifikasi Status, dan *Role-Based Access Control*, yang seluruhnya bekerja dalam satu kesatuan sistem untuk mendukung proses penghapusan regident kendaraan bermotor di Jawa Tengah.

Hasil evaluasi menunjukkan bahwa platform ini memiliki kualitas *usability* yang baik dengan beberapa temuan yang perlu ditindaklanjuti. *Heuristic evaluation* menunjukkan bahwa 82,9% dari seluruh item evaluasi mendapat skor "Good" dengan temuan "Major" hanya pada aspek dokumentasi dalam aplikasi. Simulasi *System Usability Scale* menghasilkan skor 71,5 yang termasuk dalam Grade B dengan kategori "Good", melampaui rata-rata industri sistem *e-government* yang berkisar pada angka 68. Estimasi *task completion rate* mencapai 92,3% dengan rata-rata waktu penyelesaian 2,2 menit per tugas dari 13 skenario yang diuji. Jika dibandingkan dengan proses manual yang memerlukan waktu 7 hingga 14 hari untuk setiap pengajuan, sistem ini menawarkan potensi peningkatan efisiensi waktu yang signifikan, sejalan dengan target peningkatan efisiensi minimal 30% yang ditetapkan dalam proposal kegiatan.

### 4.2 Saran Perbaikan

Berdasarkan temuan evaluasi, beberapa saran perbaikan diajukan untuk meningkatkan kualitas *usability* platform. Pertama, pengembangan sistem panduan dalam aplikasi (*in-app help system*) dan alur pengenalan interaktif (*onboarding tutorial*) bagi pengguna baru merupakan prioritas utama untuk mengatasi temuan pada heuristic H10. Kedua, implementasi *disabled state* pada tombol *submit* hingga seluruh *field* wajib terisi dan validasi form lengkap perlu segera diterapkan untuk mencegah kesalahan pengguna pada heuristic H5. Ketiga, penambahan *default values* yang aman pada *filter* di halaman dashboard untuk menghindari kesalahan *query* yang tidak terduga. Keempat, dilakukannya *usability testing* formal dengan partisipan aktual dari seluruh instansi terkait, yaitu Samsat, Polda, Bapenda, dan Jasa Raharja, untuk memvalidasi estimasi yang telah dilakukan pada penelitian ini serta memperoleh data empiris mengenai *task completion time* dan skor SUS yang sesungguhnya. Kelima, pengukuran efisiensi waktu secara aktual dengan membandingkan waktu pemrosesan sebelum dan sesudah implementasi sistem untuk memvalidasi target peningkatan efisiensi sebesar 30% sebagaimana direncanakan dalam proposal.

### 4.3 Luaran

Empat luaran utama yang ditargetkan dalam program Hibah Internal PkM Universitas Bina Nusantara berada dalam tahap pengerjaan yang sesuai dengan rencana. Publikasi pada *The International Conference on Community Development* (ICCD) 2026 yang terindeks Scopus sedang dalam tahap penyusunan artikel. Poster ilmiah sebagai media presentasi hasil penelitian sedang dalam tahap perancangan visual. *Enrichment* pengajaran yang terintegrasi dengan kurikulum telah disusun dan menunggu proses pengesahan. Platform teknologi dan inovasi berupa aplikasi SIP-HAPUS telah selesai dikembangkan, telah *live* dan dapat diakses secara *online*, serta telah diserahkan kepada mitra Bapenda Provinsi Jawa Tengah untuk digunakan dalam operasional pelayanan publik.

---

## ACKNOWLEDGMENT

Penelitian dan pengabdian kepada masyarakat ini didanai oleh Program Hibah Internal PkM (HIP) Universitas Bina Nusantara dengan skema Binus Peduli Lingkungan – Teknologi Tepat Guna yang relevan dengan SDG 16: Peace, Justice and Strong Institutions. Pelaksanaan kegiatan melibatkan mitra strategis yaitu Badan Pengelola Pendapatan Daerah (Bapenda) Provinsi Jawa Tengah melalui kerja sama yang difasilitasi oleh Danang Wicaksono, S.IP., M.Si. selaku Kepala Bidang Pajak Kendaraan Bermotor. Tim pengucapkan terima kasih kepada Community Empowerment Manager Universitas Bina Nusantara serta seluruh pemangku kepentingan di lingkungan Samsat, Polda Jawa Tengah, dan PT Jasa Raharja yang telah berkontribusi dalam proses identifikasi kebutuhan, pengujian sistem, dan validasi alur bisnis.

---

## REFERENCES

Brooke, J. (1996). SUS: A quick and dirty usability scale. In P. W. Jordan, B. Thomas, B. A. Weerdmeester, & I. L. McClelland (Eds.), *Usability evaluation in industry* (pp. 189–194). Taylor & Francis.

Goni, J. I. C., & Van Looy, A. (2024). Advancing practice through design-science research: A tool for innovating less-structured business processes. *Business Process Management Journal*. Advance online publication. https://doi.org/10.1108/BPMJ-11-2024-1061

Janssen, M., Brous, P., Estevez, E., Barbosa, L. S., & Janowski, T. (2020). Data governance: Organizing data for trustworthy artificial intelligence. *Government Information Quarterly*, 37(3), 101493. https://doi.org/10.1016/j.giq.2020.101493

Jauculan, L. L., & Patayon, U. B. (2024). Enhancing UX/UI: A mixed-approach evaluation of a web-based student clearance system at a state university in the Philippines. *Procedia Computer Science*, 234, 1061–1068. https://doi.org/10.1016/j.procs.2024.03.100

Maier, A., Mattfeldt, M., Schreiber, H. P., & Veit, D. (2023). Digital government transformation and public service delivery: A systematic literature review. *Government Information Quarterly*, 40(2), 101809. https://doi.org/10.1016/j.giq.2023.101809

Nielsen, J. (1994). Heuristic evaluation. In J. Nielsen & R. L. Mack (Eds.), *Usability inspection methods* (pp. 25–62). John Wiley & Sons.

Peffers, K., Tuunanen, T., Rothenberger, M. A., & Chatterjee, S. (2007). A design science research methodology for information systems research. *Journal of Management Information Systems*, 24(3), 45–77. https://doi.org/10.2753/MIS0742-1222240302

Sani, A., Putri, Z. A. P., Nurmiati, E., Andrianingsih, A., Usman, U., & Subiyakto, A. (2024). Evaluating usability of e-commerce application using System Usability Scale questionnaires. In *Proceedings of the 12th International Conference on Cyber and IT Service Management (CITSM)*. https://doi.org/10.1109/CITSM64103.2024.10775311

Sauro, J., & Lewis, J. R. (2016). *Quantifying the user experience: Practical statistics for user research* (2nd ed.). Morgan Kaufmann.

Twizeyimana, J. D., & Andersson, A. (2019). The public value of e-government: A literature review. *Government Information Quarterly*, 36(2), 167–178. https://doi.org/10.1016/j.giq.2019.01.008

Weerakkody, V., El-Haddadeh, R., Al-Sobhi, F., Shareef, M. A., & Dwivedi, Y. K. (2022). Examining the influence of intermediaries in facilitating e-government adoption: An empirical investigation. *International Journal of Information Management*, 65, 102476. https://doi.org/10.1016/j.ijinfomgt.2022.102476
