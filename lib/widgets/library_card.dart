import 'package:flutter/material.dart';
import 'package:library_mobile/screens/library_form.dart';
import 'package:library_mobile/screens/login.dart';
import 'package:library_mobile/screens/pages/list_book.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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
    final request = context.watch<CookieRequest>();
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () async {
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
              MaterialPageRoute(builder: (context) => const BookPage()));
          } else if (item.name == "Logout") {
            final response = await request.logout(
              // Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
              "http://localhost:8000/auth/logout/");
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message"),
              ));
            }
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
