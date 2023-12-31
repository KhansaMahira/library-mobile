import 'package:flutter/material.dart';
import 'package:library_mobile/widgets/left_drawer.dart';
import 'package:library_mobile/widgets/library_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<LibraryItem> items = [
    LibraryItem("Lihat Buku", Colors.redAccent, Icons.checklist),
    LibraryItem("Tambah Buku", Colors.lightGreen, Icons.add_shopping_cart),
    LibraryItem("Logout", const Color(0xFF716CFF), Icons.logout),
];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Library',
            ),
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.white,
          ),
          // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
          drawer: const LeftDrawer(),
          body: SingleChildScrollView(
            // Widget wrapper yang dapat discroll
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Set padding dari halaman
              child: Column(
                // Widget untuk menampilkan children secara vertikal
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                    child: Text(
                      'PBP Library',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Grid layout
                  GridView.count(
                    // Container pada card kita.
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((LibraryItem item) {
                      // Iterasi untuk setiap item
                      return LibraryCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        );
    }
}