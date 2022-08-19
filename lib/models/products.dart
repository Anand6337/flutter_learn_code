import 'package:flutter/material.dart';

class BookModel {
  static List<Items> books = [];
}

class Items {
  final String book_name;
  final String book_img;
  final String book_descp;
  final String read_btn;

  Items(
      {required this.book_name,
      required this.book_img,
      required this.book_descp,
      required this.read_btn});

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      book_name: map["book_name"],
      book_img: map["book_img"],
      book_descp: map["book_descp"],
      read_btn: map["read_btn"],
    );
  }

  toMap() => {
        "book_name": book_name,
        "book_img": book_img,
        "book_descp": book_descp,
        "read_btn": read_btn,
      };
}
