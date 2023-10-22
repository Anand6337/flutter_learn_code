import 'package:flutter/material.dart';

class CatalogModel {
  static List<Items> items = [];
}

class Items {
  final String product_name;
  final String product_img;
  final String product_price;
  final String product_descp;
  final String read_btn;

  Items(
      {required this.product_name,
      required this.product_img,
      required this.product_price,
      required this.product_descp,
      required this.read_btn});

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      product_name: map["book_name"],
      product_img: map["book_img"],
      product_price: map["product_price"],
      product_descp: map["book_descp"],
      read_btn: map["read_btn"],
    );
  }

  toMap() => {
        "book_name": product_name,
        "book_img": product_img,
        "product_price": product_price,
        "book_descp": product_descp,
        "read_btn": read_btn,
      };
}
