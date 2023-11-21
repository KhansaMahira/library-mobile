import 'dart:convert';

List<Book> bookFromJson(String str) => List<Book>.from(json.decode(str).map((x) => Book.fromJson(x)));

String bookToJson(List<Book> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Book {
  String model;
  int pk;
  Fields fields;

  Book({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  int user;
  String name;
  DateTime dateAdded;
  int amount;
  String description;

  Fields({
    required this.user,
    required this.name,
    required this.dateAdded,
    required this.amount,
    required this.description,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    user: json["user"],
    name: json["name"],
    dateAdded: DateTime.parse(json["date_added"]),
    amount: json["amount"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "name": name,
    "date_added": "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
    "amount": amount,
    "description": description,
  };
}

/*
class Book {
  final String name;
  final int amount;
  final String description;

  const Book({
    required this.name,
    required this.amount,
    required this.description,
  });
}
*/