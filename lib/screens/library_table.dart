import 'package:flutter/material.dart';
import 'package:library_mobile/widgets/left_drawer.dart';
import 'package:library_mobile/services/book_service.dart';

class LibraryTablePage extends StatelessWidget {
  const LibraryTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tabel List Buku',
          ),
        ),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: DataTable(
        columns: const [
          DataColumn(
            label: Text(
              'Nama',
              style: TextStyle(fontWeight:FontWeight.bold),
            )
          ),
          DataColumn(
            label: Text(
              'Jumlah',
              style: TextStyle(fontWeight:FontWeight.bold),
            )
          ),
          DataColumn(
            label: Text(
              'Deskripsi',
              style: TextStyle(fontWeight:FontWeight.bold),
            )
          ),
        ],
        rows: BookService.getBooksList().map((book) => DataRow(
          cells: [
            DataCell(Text(book.name)),
            DataCell(Text(book.amount.toString())),
            DataCell(Text(book.description)),
          ],
        )).toList(),
      ),
    );
  }
}