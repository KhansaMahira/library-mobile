import 'package:flutter/material.dart';
import 'package:library_mobile/screens/library_form.dart';
import 'package:library_mobile/screens/library_table.dart';

class LibraryItem {
  final String name;
  final Color color;
  final IconData icon;

  LibraryItem(this.name, this.color, this.icon);
}

class LibraryCard extends StatelessWidget {
  final LibraryItem item;

  const LibraryCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Buku") {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LibraryFormPage()));
          } else if (item.name == "Lihat Buku") {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LibraryTablePage()));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
