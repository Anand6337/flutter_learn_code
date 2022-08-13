import 'package:firstflutter_app/models/products.dart';
import 'package:firstflutter_app/widgets/books_widget.dart';
import 'package:firstflutter_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../models/products.dart';
import '../models/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => BookModel.books[0]);
    const int days = 30;
    const String name = "Anand's";
    return Scaffold(
      appBar: AppBar(
        title: Text("Pustak Grah"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (BuildContext context, int index) {
            return BooksWidgets(
              items: dummylist[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
