# LeftOver Mobile App

**Ubah bahan makanan sisa menjadi hidangan berikutnya.**

LeftOver adalah aplikasi mobile rekomendasi resep yang membantu mahasiswa, anak kos, dan keluarga memanfaatkan bahan makanan yang tersisa sebelum kedaluwarsa atau terbuang. Aplikasi ini terintegrasi langsung dengan platform web LeftOver.

[**Tautan APK (menyusul)**]() · [**Desain Figma**](https://www.figma.com/design/MVE4zOAzM8PyQj1AfHIKZM/LeftOver?node-id=1-2&t=YFxZ7RLrrGsnCGk6-1) · [**Tautan APK**](#) *(Menyusul setelah Checkpoint 1)*

---

## Daftar Anggota Kelompok dan Pembagian Modul

| Nama | NPM | Modul (Fitur Utama) |
|---|---|---|
| Raffa Zia Arya Putra | 2506619285 | Katalog Resep (*Recipe Catalog*) & Landing Page |
| Zulfa Rahmi Nasution | 2506598324 | Pelacak Persediaan (*Pantry Tracker*) & Landing Page |
| Karyn Isabelle Dexter | 2506656860 | Daftar Belanja Pintar (*Smart Shopping List*) |
| Elisia Catherine | 2506533570 | Ulasan dan Penilaian (*Reviews and Ratings*) & Autentikasi |
| Alya Tsabita Imani | 2506620192 | Resep Favorit (*Favorite Recipes*) & Landing Page |

## Peran Pengguna (Aktor)

1. **Tamu (*Guest / Anonymous User*)**
   Tamu dapat menjelajahi resep publik, mencari dan memfilter katalog resep, serta melihat detail resep tanpa perlu login.
2. **Pengguna Terdaftar (*Registered User*)**
   Pengguna terdaftar memperoleh akses sebagai tamu serta dapat menggunakan fitur yang memerlukan autentikasi, termasuk pengelolaan persediaan bahan makanan (Pantry Tracker), daftar belanja, resep favorit, serta memberikan ulasan & rating.

## Alur Pengintegrasian Data (Situs Web & Aplikasi Mobile)

Aplikasi mobile LeftOver (Flutter) tidak menyimpan data secara lokal maupun mandiri, melainkan terhubung langsung dengan basis data situs web (Django) dari Proyek Tengah Semester. Alur pengintegrasian datanya adalah sebagai berikut:

1. **Backend (Web Service):** Proyek web Django telah dilengkapi dengan modul API menggunakan **Django REST Framework (DRF)**. Setiap modul memiliki *endpoint* (URL API) tersendiri yang mengembalikan dan menerima data dalam format JSON.
2. **Frontend (Mobile):** Aplikasi Flutter menggunakan pemanggilan asinkron (misalnya menggunakan *package* `http` atau `dio`) untuk menembak *endpoint* REST API Django tersebut.
3. **Alur Data:** 
   - Ketika pengguna melihat katalog resep atau daftar pantry di aplikasi, Flutter akan melakukan `GET request` ke API Django, menerima data JSON, mem-parsing-nya, dan menampilkannya melalui *Widget*.
   - Ketika pengguna menambahkan bahan makanan, memberikan rating, atau melakukan autentikasi, Flutter akan mengirimkan `POST/PUT/DELETE request` beserta *payload* JSON ke API Django. Django kemudian memvalidasi, memproses, dan menyimpan perubahan tersebut ke dalam *database* PostgreSQL di PWS.

## Daftar Modul dan Fungsionalitas Utama

1. **Katalog Resep (*Recipe Catalog*):** Menjelajahi resep, mencari, memfilter berdasarkan bahan, dan menambahkan resep yang terhubung ke TheMealDB API.
2. **Pelacak Persediaan (*Pantry Tracker*):** Mengelola persediaan bahan makanan di dapur/kulkas, mencatat tanggal kedaluwarsa, dan memberikan notifikasi/saran masakan.
3. **Daftar Belanja Pintar (*Smart Shopping List*):** Mencatat bahan makanan yang perlu dibeli dan sinkronisasi otomatis ke *Pantry Tracker* setelah dibeli.
4. **Ulasan dan Penilaian (*Reviews and Ratings*):** Pengguna terautentikasi dapat memberikan rating (1-5 bintang), menulis pengalaman memasak, dan mengunggah foto dokumentasi.
5. **Resep Favorit (*Favorite Recipes*):** Menyimpan resep pilihan ke dalam daftar personal agar mudah diakses kembali beserta catatan khusus.
6. **Autentikasi & Landing Page:** Sistem login/registrasi pengguna serta tampilan utama (beranda) yang memperkenalkan fitur aplikasi.