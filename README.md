# library_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tugas

Khansa Mahira

2206819413

PBP D


**Tugas 7**

**Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter?**

Jawaban:

_stateless widget_:
1) Tidak bergantung pada perubahan data atau aktivitas pengguna.
2) Hanya ter-_update_ ketika diinisialisasi.
3) Contoh: _text_, _icon_, dan _RaisedButton_.
4) Tidak memiliki fungsi setState(), sehingga tidak dapat ter-_update_ dengan sendirinya.
5) Menggunakan _static widget_.
6) Tidak bisa di-_update_ atau mengubah _state_ selama _runtime_ kecuali terdapat _event_ eksternal.
7) Performance ringan dan efisien.

_stateful widget_:
1) Dapat berubah atau _update_ secara dinamis saat _runtime_.
2) Contoh: _checkbox_, _radio buttons_, dan _slider_.
3) Memiliki fungsi _internal_ setState() sehingga dapat ter-_update_ ketika input data berubah.
4) Menggunakan _dynamic widget_.
5) Dapat di-_update_ selama _runtime_ berdasarkan aktivitas pengguna atau terdapat perubahan data.
6) Performance sedikit _overhead_.

**Sebutkan seluruh _widget_ yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**

Jawaban:
- MyApp digunakan sebagai _root widget_ dari aplikasi.
- MaterialApp digunakan sebagai pembungkus Material Widgets lainnya.
- MyHomePage digunakan sebagai tampilan Home Page.
- Scaffold digunakan untuk mengimplementasi struktur layout visual desain material.
- AppBar digunakan sebagai _top app bar_.
- Text digunakan untuk menampilkan text atau pesan yang telah dituliskan pada kode.
- SingleChildScrollView digunakan untuk menampilkan setiap elemen atau widget yang tersusun secara berurutan bisa di-_scroll_.
- Column digunakan untuk menampilkan setiap elemen yang telah ditambahkan menjadi tersusun secara vertikal.
- Padding digunakan menambah ruang kosong di sekitar widget atau sekelompok widget.
- GridView digunakan untuk menampilkan item dalam bentuk dua dimensi yaitu row dan colom.
- LibraryCard digunakan sebagai card untuk menampilkan objek LibraryItem.
- Material digunakan untuk membuat permukaan desain material persegi panjang.
- InkWell digunakan untuk merespon peristiwa sentuhan yang dilakukan oleh pengguna.
- SnackBar digunakan untuk memberitahukan pengguna menggunakan pesan penndek.
- Container digunakan untuk menyimpan elemen-elemen atau widget-widget lain.
- Center digunakan untuk menampilkan setiap elemen pada posisi center. 
- Icon digunakan untuk menampilkan ikon grafis.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**

Jawaban:
1) Setelah menginstal _tools_ yang diperlukan pada proyek, saya membuat proyek dengan flutter create.
2) Setelah app default telah dibuat, berikutnya saya merevisi kode disesuaikan dengan kebutuhan saya. Oleh karena itu, saya memisahkan class MyHomePage di file terpisah yaitu menu.dart. Karena berada pada file terpisah, maka saya menambahkan import menu.dart pada main.dart.
3) Berikutnya pada menu.dart yaitu dengan mengubah sifat widget menjadi class MyHomePage extends StatelessWidget dan melakukan penyesuaian.
4) Karena aplikasi saya merupakan aplikasi perpustakaan, maka saya membuat kelas LibraryItem dan menambahkan object yang memiliki tipe LibraryItem pada sebuah list yaitu items dalam class MyHomePage.
5) Karena terdapat list items yang akan ditampilkan pada loop GridView.count, saya membuat class LibraryCard extends StatelessWidget yang responsive terhadap sentuhan menggunakan InkWell dan menampilkan SnackBar jika disentuh.
6) Untuk menyelesaikan soal bonus, saya menyesuaikan dengan menambahkan atribut color pada LibraryItem serta melakukan penyesuaian pada LibraryCard.


**Tugas 8**

**Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**

Jawaban:

Navigator.push():

Digunakan untuk berganti ke _route_ baru dengan menambahkan _route_ di atas _current route_ pada _stack of routes_ yang diatur oleh Navigator. Contoh penggunaan method ini saat tidak terjadi perubahan dari aksi tertentu sehingga pengguna dapat kembali ke halaman sebelum melakukan navigasi.

Navigator.pushReplacement():

Digunakan untuk menggantikan _route_ yang sedang digunakan saat ini dengan _route_ tujuan. Contoh penggunaan method ini saat pengguna telah membuat sebuah perubahan seperti menyimpan data setelah mengisi suatu form karena pengguna tidak ingin kembali ke halaman sebelum perubahan terjadi.

**Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**

Jawaban:

**Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**

Jawaban:

**Bagaimana penerapan clean architecture pada aplikasi Flutter?**

Jawaban:

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)**

Jawaban:
1) Pada tugas ini, saya menambahkan left drawer sebagai navigasi pada aplikasi. Saya menambahkan class LeftDrawer pada left_drawer.dart. Sebagai navigasi, saya menambahkan DrawerHeader serta menggunakan widget ListTile untuk _routing_ dengan Navigator.pushReplacement ke halaman utama dan halaman form tambah buku. Drawer ini digunakan pada menu.dart dan library_form.dart.
2) Berikutnya, saya membuat form untuk menerima data yang akan di-_input_ oleh pengguna dengan membuat class LibraryFormPage dan class _LibraryFormPageState pada library_form.dart. Pada form, saya akan mengambil data berupa nama, jumlah, dan deskripsi buku. Saya juga menambahkan variabel _formKey sebagai handler dari form state, validasi form, dan penyimpanan form. Masing-masing data diambil menggunakan TextFormField dan memiliki validasi field tidak boleh kosong, tetapi terdapat validasi tambahan pada jumlah menggunakan int.tryParse(value) == null untuk memastikan data yang diinput berupa angka.
3) Untuk memastikan data sukses dibaca setelah menekan tombol Save, maka data akan dimunculkan menggunakan widget showDialog dengan menampilkan semua data yang telah diisi sebelumnya. Namun, apabila data yang dicoba untuk dibaca tidak sesuai dengan ketentuan validasi, maka di bawah TextFormField akan memberikan keterangan sesuai kondisi yang terjadi.
4) Saya juga membuat library_card.dart yang isinya berupa class LibraryItem dan class LibraryCard yang telah saya pindahkan dari menu.dart. Pada class LibraryCard saya menambahkan _routing_ menggunakan Navigator.push sesuai dengan nama item.
5) Untuk kerapihan file, saya membuat folder baru dan memindahkan file ke folder yang sesuai. Folder widgets berisi file left_drawer.dart dan library_card.dart. Folder screens berisi file menu.dart dan library_form.dart.
6) Untuk menyelesaikan soal bonus, saya membuat folder dan file baru seperti models/book.dart yang berisi class Book sebagai model data. Saya juga membuat services/book_service.dart yang akan menyimpan list buku, menambahkan buku pada list, dan mendapatkan list buku pada class BookService. Saya juga memerlukan class yang menampilkan tabel data dari item buku pada list buku yaitu dengan membuat class LibraryTablePage pada screens/library_table.dart. Pada class LibraryTablePage, saya menggunakan DataTable, DataColumn, dan rows yang memiliki isi berupa BookService.getBooksList() yang di-_map_ pada DataRow dengan masing-masing atribut dari objek buku ditampilkan pada DataCell. Saya juga menambahkan _routing_ menuju halaman Lihat Buku pada widgets/library_card.dart dan widgets/left_drawer.dart.
7) Tidak lupa juga selama pengerjaan, saya menambahkan import yang dibutuhkan pada masing-masing file.
