import 'package:library_mobile/models/book.dart';

class BookService {
  static List<Book> booksList = [];

  static void addBook(Book book) {
    booksList.add(book);
  }

  static List<Book> getBooksList() {
    return booksList;
  }
}
