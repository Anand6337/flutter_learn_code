import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/products.dart';

class orderPage extends StatelessWidget {
  final Items books;

  const orderPage({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Image.network(books.product_img),
            books.product_name.text.xl4.center.bold.make(),
          ],
        ),
      ),
    );
  }
}
