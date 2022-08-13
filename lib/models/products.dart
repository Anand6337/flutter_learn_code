import 'package:flutter/material.dart';

class BookModel {
  static final books = [
    Items(
      book_name: 'Shiv Mahapuraan',
      book_img:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Bearded_Shiva.jpg/220px-Bearded_Shiva.jpg',
      book_price: "Rs.132",
      book_descp: 'The Hindu Granth of Devo ke Dev Mahadev',
    ),
  ];
}

class Items {
  final String book_name;
  final String book_img;
  final String book_descp;
  final String book_price;

  Items(
      {required this.book_name,
      required this.book_img,
      required this.book_descp,
      required this.book_price});
}
