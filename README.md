Nama: A. Sherwyn Fawwaz Nitisara Suthaputra
NPM: 2306165811
Kelas : PBP F

TUGAS INDIVIDU 7

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Jawab:
- Stateless Widget merupakan widget yang bersifat statis, yang berarti setiap widget ini melakukan render, maka statusnya tidak akan berubah atau terupdate. Contohnya adalah ketika menampilkan teks atau gambar yang tidak membutuhkan pembaruan konten.
- Stateful Widget merupakan widget yang bersifat dinamis, yang berarti dapat berubah seiring waktu atau dengan interaksi pengguna. Contohnya adalah ketika ada perubahan pada data di dalam state, widget dapat di-update dengan memanggil setState() untuk merender ulang UI.

Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Jawab:
Pada proyek ini, beberapa widget yang saya gunakan adalah:
- MaterialApp: Root widget untuk aplikasi Flutter yang menyediakan struktur dasar aplikasi, tema, dan mengatur halaman utama (home).
- Scaffold: Struktur dasar dari sebuah halaman yang menyediakan struktur layout dasar seperti AppBar, body, dan FloatingActionButton.
- AppBar: Bar yang ada di bagian atas halaman, biasanya menampilkan judul dan bisa ditambahkan elemen lain seperti tombol atau ikon.
- Column: Widget untuk menampilkan elemen secara vertikal. Pada proyek ini, digunakan untuk menyusun beberapa elemen secara berurutan ke bawah.
- Row: Widget untuk menampilkan elemen secara horizontal dalam satu baris. Pada proyek ini, Row digunakan untuk menyusun tiga InfoCard secara sejajar.
- GridView.count: Grid layout yang menampilkan item dalam bentuk grid dengan jumlah kolom tertentu. Dalam proyek ini, digunakan untuk menampilkan tombol secara terstruktur dalam bentuk grid.
- Card: Widget untuk menampilkan konten dalam sebuah kotak dengan bayangan yang biasanya digunakan sebagai wadah konten.
- InkWell: Widget yang memberikan efek ripple atau sentuhan ketika pengguna menekan item. Digunakan pada ItemCard untuk memberikan interaksi pada setiap item yang ditekan.
- SnackBar: Pop-up singkat yang muncul dari bawah layar untuk memberikan notifikasi sementara kepada pengguna, digunakan untuk menampilkan pesan ketika tombol ditekan.

Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Jawab:
setState() adalah fungsi yang digunakan dalam StatefulWidget untuk memperbarui UI ketika ada perubahan pada data atau state widget. Ketika setState() dipanggil, Flutter akan merender ulang widget dan menampilkan perubahan pada layar. Setiap variabel atau properti dalam State yang diubah akan terkena dampak, terutama yang memengaruhi tampilan UI. Contoh variabel yang bisa terkena dampak oleh setState() adalah variabel yang menampung data UI, seperti daftar item, nilai counter, atau variabel Boolean untuk mengatur tampilan widget tertentu.

Jelaskan perbedaan antara const dengan final.
Jawab:
- const: Digunakan untuk mendeklarasikan nilai konstan yang sudah diketahui saat kompilasi dan tidak dapat diubah. Jika sebuah variabel atau widget dideklarasikan sebagai const, maka nilainya harus ditentukan pada saat kompilasi. const digunakan ketika kita tahu nilai pasti saat kompilasi, seperti const pi = 3.14;
- final: Digunakan untuk mendeklarasikan variabel yang nilainya ditentukan sekali dan tidak bisa diubah, tetapi nilainya dapat ditentukan saat runtime (tidak harus diketahui pada kompilasi). final digunakan ketika nilai variabel baru akan diketahui saat runtime, seperti final userName = getUserName();.

Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Jawab:
1. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
   - Download flutter untuk MacOS, instalasi Android Studio, install dart dan flutter extension
   - Buat direktori baru bernama share_store dan masuk ke dalam dirnya
   - Generate proyek flutter dengan flutter create share_store, kemudian cd share_store
   - Jalankan proyek dengan google chrome, dengan enable web support terlebih dahulu 
   - Jalankan proyek tersebut dengan flutter run -d chrome

2. Membuat tiga tombol sederhana dengan ikon dan teks untuk "Lihat Daftar Produk," "Tambah Produk," dan "Logout"
   - Implementasi ini dilakukan dengan membuat kelas ItemHomepage yang menyimpan nama dan ikon untuk setiap item.
   - Di dalam MyHomePage, daftar ItemHomepage dibuat untuk menyimpan ketiga item tersebut, lalu ditampilkan dalam bentuk grid menggunakan GridView.count.
   - Menerapkan warna berbeda pada setiap tombol (Colors.cyan.shade700, Colors.cyan.shade800, Colors.cyan.shade900):
   - Warna tombol ditentukan di dalam widget ItemCard. Berdasarkan item.name, latar belakang tombol diberikan warna cyan.shade700 untuk "Lihat Daftar Produk," cyan.shade800 untuk "Tambah Produk," dan cyan.shade900 untuk "Logout".

3. Memunculkan Snackbar dengan pesan berbeda ketika setiap tombol ditekan
Menggunakan widget InkWell pada ItemCard, saya menambahkan fungsi onTap untuk memunculkan Snackbar dengan pesan berbeda sesuai item yang ditekan.

-------------------------------------------------------------------------------------------

TUGAS INDIVIDU 8

Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Jawab:
const di Flutter digunakan untuk mendeklarasikan nilai yang tetap dan bersifat konstan selama kompilasi. Artinya, widget atau objek yang menggunakan const hanya dibuat sekali dan sifatnya tidak dapat diubah.

Keuntungan penggunaan const di Flutter:
- Optimasi Kinerja: Karena const bersifat immutable, Flutter dapat menghindari proses pembuatan ulang objek tersebut. Di dalam widget tree, jika sebuah widget memiliki const, Flutter tahu bahwa widget tersebut tidak perlu di-render ulang, yang mengurangi beban rendering dan meningkatkan performa aplikasi.
- Efisiensi Memori: Objek yang dideklarasikan dengan const hanya dibuat satu kali dan disimpan dalam memori. Jika objek atau widget yang sama dipanggil berulang kali, Flutter dapat menggunakan instance yang sudah ada tanpa perlu mengalokasikan memori baru, sehingga menghemat penggunaan memori.
- Optimasi Waktu Kompilasi: Dengan menentukan objek const pada saat kompilasi, Flutter dapat mengidentifikasi dan mengoptimalkan objek lebih awal, mengurangi beban komputasi selama runtime, sehingga aplikasi terasa lebih cepat dan responsif.

Kapan sebaiknya menggunakan const?
- Untuk widget statis, misalnya teks, ikon, atau elemen visual yang tidak berubah.
- Pada struktur data tetap, seperti daftar atau set yang tidak berubah.
- Untuk menghindari rebuild yang tidak diperlukan.
- Pada nilai-nilai konstan seperti ukuran font atau warna tertentu.
- Pada konstanta global atau konstanta dalam fungsi.

Kapan sebaiknya tidak menggunakan const?
- Pada widget atau data yang dinamis.
- Pada objek atau widget yang nilainya dihasilkan secara acak atau diperoleh secara asinkron.
- Pada state yang dapat berubah dalam widget.
- Ketika nilai diperoleh pada runtime.

Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Jawab:
Column dan Row adalah dua widget tata letak dasar yang digunakan untuk mengatur susunan elemen UI di Flutter.
Column:
Merupakan widget yang mengatur elemen secara vertikal, cocok untuk daftar, formulir, atau layout dengan elemen bertumpuk. Memiliki dua properti utama, yaitu mainAxisAlignment = Mengatur jarak antar elemen dalam arah vertikal. Kemudian crossAxisAlignment = Mengatur perataan elemen secara horizontal di dalam Column.
Contoh implementasi:
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
Row:
Merupakan widget yang mengatur elemen secara horizontal, cocok untuk menggabungkan ikon dengan teks atau menampilkan tombol secara sejajar. Memiliki dua parameter utama, yaitu mainAxisAlignment = Mengatur jarak antar elemen dalam arah horizontal. Kemudian crossAxisAlignment = Mengatur perataan elemen secara vertikal di dalam Row.
Contoh implementasi:
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Icon(Icons.star),
    Icon(Icons.star),
  ],
)

Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Jawab:
Elemen yang Digunakan:
- TextFormField untuk "Name": Menerima input nama produk dengan validator untuk memastikannya tidak kosong.
- TextFormField untuk "Amount": Menerima input jumlah dan harus berupa integer.
- TextFormField untuk "Description": Menerima deskripsi produk dengan validator.
Elemen yang Tidak Digunakan:
- Checkbox: Untuk memilih antara dua opsi (ya/tidak).
- Radio Button: Untuk memilih satu opsi dari beberapa pilihan.
- DropdownButton: Untuk menyediakan pilihan dalam bentuk dropdown.
- Slider: Untuk mengatur nilai dalam rentang tertentu.
- Switch: Untuk menyediakan opsi hidup/mati.
- DatePicker dan TimePicker: Untuk memilih tanggal atau waktu tertentu.

Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Jawab:
Kita menggunakan ThemeData pada MaterialApp. Dalam aplikasi ini saya menerapkan ThemeData untuk menetapkan warna utama (primaryColor) dan skema warna, sehingga elemen UI dan warna di seluruh tampilan konsisten.


Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Jawab:
Untuk mengelola navigasi di aplikasi dengan banyak halaman, Flutter menggunakan Navigator dengan metode seperti push(), pop(), dan pushReplacement(). Selain itu, Named Route dapat digunakan dalam MaterialApp untuk mengatur navigasi secara terstruktur. Fitur navigasi seperti Drawer atau Bottom Navigation juga dapat ditambahkan untuk memudahkan akses antar halaman.

-------------------------------------------------------------------------------------------

TUGAS INDIVIDU 9

Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita  tidak membuat model terlebih dahulu?
Jawab:
karena dengan menggunakan model digunakan untuk merepresentasikan data dari database kemudian dapat mengubah json ke dalam bentuk objek dari data json yang dapat ditampilkan di product_card dan jika tidak memakai model maka produk tidak dapat ditampilkan dan bisa menyebabkan error.

Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini?
Jawab:
fungsi dari hhtp di flutter digunakan untuk melakukan permintaan HTTP ke server, seperti method GET, POST, dll.

Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Jawab:
cookies request adalah library yang digunakan untuk mengirimkan cookies dari server ke client, dan instance dari cookies request perlu, kemudian dapat dibagikan ke semua komponen di aplikasi flutter karena cookies request digunakan untuk mengirimkan data dari server ke client dan data tersebut perlu diakses oleh semua komponen di aplikasi flutter.

Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter?
Jawab:
Pertama, data JSON diambil melalui API atau dari penyimpanan lokal. Kemudian, Flutter menggunakan package seperti http untuk mengirim HTTP request dan mendapatkan JSON response dari server. Data JSON kemudian di-decode menggunakan library seperti dart:convert untuk mengubahnya menjadi objek Dart. Setelah data di-decode, nilai-nilai tersebut dapat digunakan dalam Flutter untuk mengisi widget, atau untuk meng-update state dan menampilkan informasi pada interface pengguna menggunakan widget.

Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter?
Jawab:
- Login
1. Pengguna memasukkan username dan password pada Flutter.
2. Flutter mengirimkan HTTP request ke Django dengan data form username dan password. 
  final response = await request.login(
    "http://127.0.0.1:8000/auth/login/",
    {
      'username': username,
      'password': password
    }
  );
3. Django menerima HTTP request dan memeriksa apakah username dan password yang dikirim sesuai dengan data yang ada di database melalui views.py
4. Jika username dan password cocok, Django mengembalikan HTTP response dengan status code
5. Flutter menerima HTTP response dan mengeksekusi kode yang sesuai dengan status code
6. Jika status code adalah 200, Flutter menampilkan menu yang sesuai dengan hak akses pengguna
- Register
1. Pengguna memasukkan data akun baru pada Flutter.
2. Flutter mengirimkan HTTP request ke Django dengan data akun baru.
3. Django menerima HTTP request dan memasukkan data akun baru ke dalam database
- Logout
1. Flutter mengirimkan HTTP request ke Django untuk menghapus session pengguna.
2. Django menerima HTTP request dan menghapus session pengguna.
3. Pengguna akan diarahkan ke halaman login.
4. Pengguna dapat login kembali dengan menggunakan username dan password yang telah didaftarkan.
- Menu
1. Setelah pengguna login, Flutter akan menampilkan menu yang sesuai dengan hak akses
2. Pengguna dapat mengakses menu yang sesuai dengan hak aksesnya.
3. Flutter menyimpan cookie, memungkinkan akses ke data yang memerlukan autentikasi.
4. Data seperti daftar item diambil dari endpoint Django menggunakan cookie.
5. Data ditampilkan di Flutter.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Jawab:
1. Registrasi Akun
Tambahkan form di Flutter untuk input username, password, dll.
Kirim data ke endpoint Django /auth/register/ menggunakan POST.
Django membuat akun baru dan mengembalikan respons sukses.
2. Halaman Login
Buat form login di Flutter. Kirim username dan password ke endpoint /auth/login/. Simpan cookie autentikasi menggunakan CookieRequest.
3. Sistem Autentikasi
Membuat django app bernama authentication, menambahkan package corsheader. Kemudian melakukan integrasi di flutter dengan menambahkan package django_auth dan provider. Serta menggunakan middleware Django untuk mengelola autentikasi.
4. Model Kustom
Memanfaatkan website Quicktype dengan memasukkan data JSON pada proyek django kita, kemudian memasukkannya ke web tersebut untuk mendapatkan model kustom.
5. Halaman Daftar Item
Buat endpoint Django yang mengembalikan data JSON semua item.
Ambil data JSON di Flutter menggunakan GET. Tampilkan data di widget seperti ListView.
6. Menampilkan Nama, Deskripsi, Stok, Harga
Ambil data item dari JSON. Tampilkan properti tersebut di Flutter.
7. Halaman Detail Item
Buat route di Flutter untuk halaman detail item. Kirim data item dari halaman daftar ke halaman detail. Tampilkan semua properti item di halaman detail. 
8. Filter Item
Tambahkan filter di endpoint Django untuk hanya mengembalikan item milik user yang login. 
items = Item.objects.filter(user=request.user)
Gunakan cookie autentikasi di Flutter untuk memastikan hanya item user yang login ditampilkan.

