import 'package:firstflutter_app/models/products.dart';
import 'package:flutter/material.dart';

class BooksWidgets extends StatelessWidget {
  final Items items;

  const BooksWidgets({super.key, required this.items}) : assert(items != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      shape: const StadiumBorder(),
      // shadowColor: Colors.deepOrange,
      elevation: 0.3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          shape: StadiumBorder(),
          hoverColor: Colors.white70,
          leading: Image.network(
            items.book_img,
            height: 50,
          ),
          title: Text(items.book_name,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(items.book_descp),
          trailing: Text(
            items.read_btn,
            textScaleFactor: 0.9,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          onTap: () {
            print("Ha Ji Bolo Kya kehna hai");
          },
        ),
      ),
    );
  }
}
