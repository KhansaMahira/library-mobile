import 'package:flutter/material.dart';
import 'package:library_mobile/screens/library_form.dart';
import 'package:library_mobile/screens/library_table.dart';
import 'package:library_mobile/screens/menu.dart';
import 'package:library_mobile/screens/pages/list_book.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Column(
              children: [
                Text(
                  'Library Mobile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh list bukumu di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Buku'),
            // Bagian redirection ke LibraryFormPage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LibraryFormPage(),
                )
              );
            },
          ),
          /*
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Buku'),
            // Bagian redirection ke LibraryFormPage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LibraryTablePage(),
                )
              );
            },
          ),
          */
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Daftar Buku'),
            onTap: () {
              // Route menu ke halaman produk
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookPage()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}