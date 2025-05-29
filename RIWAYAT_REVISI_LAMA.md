
## Riwayat revisi

### 0.01.20140124 (24 Jan 2014)

* Umum: Mengubah tampilan dengan menggunakan kerangka Bootstrap

### 0.01.20090923 (23 September 2009)

* Beranda: Menambahkan bagian "salah eja"

### 0.01.20090704 (04 Juli 2009)

* Dukungan opensearch http://www.opensearch.org/Home

### 0.01.20090628 (28 Juni 2009)

* Umum: Tampilan baru
* Umum: Alternatif logo dan tampilan. Nonaktif.
* Kamus: Menambahkan KTG_TIMEOUT = 15 untuk membatasi waktu uji coba mengambil data dari KBBI

### 0.01.20090627 (27 Juni 2009)

* Kamus: Tambahan terjemahan dari open-tran. Masih non-aktif.
* Umum: API sederhana untuk kamus (format JSON, XML)
* Umum: Menambahkan operator pencarian "diawali" dan "diakhiri"
* Umum: Mengganti sistem penomoran versi - dua digit untuk minor dan tanggal
  untuk build
* Umum: Penggantian jenis huruf menjadi Trebuchet MS
* Kamus: Caching data KBBI lengkap
* Kamus: Penambahan definisi secara dinamis
* Umum: Mulai menggunakan jquery

### 0.0.21 (20 Juni 2009)

* Kamus: Fitur terjemahan
* Kamus: Penghapusan lema pada bagian admin
* Kamus: Pengelompokan tipe imbuhan
* Kamus: Tampilkan hanya pengalihan untuk lema yang hanya pengalihan
* Kamus: Imbuhan dan majemuk digabungkan menjadi kata turunan. Nantinya
  akan terdiri dari imbuhan, ulang, majemuk
* Perbaikan bug: Data KBBI dari entri yang berbeda dipisahkan dengan br

### 0.0.20 (14 Juni 2009)

* Pencarian untuk peribahasa (sumber: Gianto)
* Perbaikan bug judul halaman

### 0.0.19 (06 Juni 2009)

* Kamus: Singkatan-singkatan dalam info

### 0.0.18 (05 Juni 2009)

* Glosarium: Pemecah kata kunci dibatasi untuk semua yang bukan alfanum
* Perbaikan parser KBBI untuk membuang angka
* Glosarium: Menambahkan wikipedia_updated untuk efisiensi proses
* Kamus: Memperbarui data info dari KBBI untuk yang belum tersedia
* Sistem: Tabel cache untuk menampung data KBBI
* Kamus: Menambahkan kolom info dan notes untuk tambahan informasi

### 0.0.17 (04 Juni 2009)

* Kamus & Glosarium: Pranala untuk melihat semua entri
* Kamus & Glosarium: Pencarian semua entri
* Glosarium: Pencarian rujukan otomatis dari Wikipedia
* Umum: Tampilan tombol operasi

### 0.0.16 (03 Juni 2009)

* Kamus: Menambahkan secara otomatis pranala luar ke Wikipedia (id dan en)

### 0.0.15 (02 Juni 2009)

* Umum: Mengganti semua istilah "frasa" menjadi "lema" (lebih umum)
* Kamus: Pranala luar
* Komentar: Tautan untuk melihat daftar komentar yang sudah masuk
* Glosarium: Nama bidang ditambahkan pada judul halaman
* Pengguna: Informasi tambahan pada formulir masuk log
* Umum: Statistik eksternal dari sitemeter dan statcounter dibuang.
* Umum: read_doc dipindahkan ke kelas doc

### 0.0.14 (01 Juni 2009)

* Peribahasa

### 0.0.13 (31 Mei 2009)

* Isian frasa aktual untuk kesalahan ejaan
* Datawarehousing jumlah definisi per frase
* Perbaikan parsing KBBI: "uang"
* Satu frasa yang memiliki dua kelas kata ditangani dengan lex_class pada
  masing-masing definisi. Kelas utama tetap diperlukan.

### 0.0.12 (30 Mei 2009)

* Beberapa perbaikan manual untuk pemilahan entri KBBI:
  air, minyak, kepala, induk, harta, alur, hutan
* Halaman utama untuk kamus dan pencarian detail kamus
* Mengganti nama tabel "translation" menjadi "glossary"
* Perubahan letak kotak pencarian glosarium menjadi di atas
* Perbaikan bug untuk menampilkan relasi terbalik
* Perbaikan bug untuk pemberian tanda tanggal pembuatan entri

### 0.0.11 (29 Mei 2009)

* Operator pencarian glosarium: Mirip, Mengandung, Persis
* Pembaruan data dari KBBI dilakukan manual
* Jumlah entri untuk kategori disiplin atau sumber
* Pencarian sinonim, antonim, kata terkait terbalik
* Pembubuhan keterangan kelas kata pada entri tesaurus
* Pranala ke kelas kata pada definisi kamus
* Penambahan tag meta "keywords" untuk halaman
* Kelas page sebagai kelas induk
* Perubahan tampilan halaman kamus
* Pengaturan komponen menjadi kelas page

### 0.0.10 (26 Mei 2009)

* Sepuluh frasa sembarang
* Formulir komentar

### 0.0.09 (25 Mei 2009)

* Perubahan halaman utama glosarium
* Perbaikan logika parsing KBBI
* Perbaikan Kesalahan parsing KBBI: "uang", "tuju", "jabat", "areal"
* Perbaikan Kesalahan parsing KBBI: sufiks "1" pada kata gabungan
* Perbaikan akar kata yang sama dengan frasanya
* Menampilkan pranala ke frasa yang dicari di hasil pencarian

### 0.0.08 (22 Mei 2009)

* Penambahan phrase.ref_source
* Log waktu pembuatan entri kamus secara otomatis

### 0.0.07 (21 Mei 2009)

* Parser untuk sinonim
* Perbaikan bug jika frasa pencarian mengandung karakter escape sql
* Menampilkan frasa yang dicari di navigasi halaman hasil pencarian.
* Perubahan tampilan daftar
* Parser otomatis untuk data KBBI
* Pembalikan rujukan untuk data yang ditemukan (imbuhan, majemuk)

### 0.0.06 (17 Mei 2009)

* Klasifikasi Roget dimasukkan ke dalam entri
* Pengalihan otomatis untuk pencarian kamus jika tidak ditemukan data
* Log jenis agen penjelajah dan waktu terakhir akses serta jumlah tampilan
  halaman untuk statistik
* Kredit untuk Femmy Syahrani
* Perubahan lisensi isi ke CC-BY-NC-SA

### 0.0.05 (16 Mei 2009)

* Formulir login dipindahkan ke class_user
* Menampilkan daftar kata yang ada dalam kamus
* Memasukkan peribahasa sebagai salah satu unsur tesaurus
* Log dibatasi hanya $_SERVER['QUERY_STRING']
* Kelas phrase -> dictionary
* Penggantian kata sandi pengguna

### 0.0.04 (15 Mei 2009)

* Rujukan ke Wikipedia untuk glosarium
* Sumber glosarium
* Daftar glosarium terkait pada entri kamus
* Fungsi pengubahan data pembaru dan waktu pembaruan untuk entri kamus dan
  glosarium
* Penambahan dan penyuntingan glosarium sederhana
* Melengkapi kelas kata menjadi 7: nomina, verba, adjektiva, adverbia,
  pronomina, numeralia, lain-lain
* Kata kunci di glosarium yang merujuk ke entri kamus
* Rujukan ke KBBI di kamus

### 0.0.03 (14 Mei 2009)

* Halaman muka yang sesuai
* Statistik pencarian frasa
* mod=doc untuk membaca dokumen
* Pembagian halaman untuk hasil pencarian

### 0.0.02 (13 Mei 2009)

* Glosarium sederhana ditambahkan
* Log deskripsi diperpendek menjadi hanya nama skrip dan querystring
* Favicon dan logo
* Menggabungkan relasi dan turunan menjadi tesaurus
* Implementasi log dasar
* Implementasi otentikasi dasar
* Memangkas nilai terkirim sebelum memberi kutipan
* Kelas untuk frasa

### 0.0.01 (12 Mei 2009)

* 2009-05-12 Versi pertama dirilis dan dimasukkan kendali sumber.
* 2009-05-09 Konsep didiskusikan melalui obrolan YM.