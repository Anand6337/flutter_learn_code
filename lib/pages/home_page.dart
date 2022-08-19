import 'dart:convert';

import 'package:firstflutter_app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/app_header.dart';
import '../widgets/home_widgets/books_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var booksJson = await rootBundle.loadString("assets/data_file/books.json");
    var decodeData = jsonDecode(booksJson);
    var productsData = decodeData["books"];
    BookModel.books = List.from(productsData)
        .map<Items>((items) => Items.fromMap(items))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Vx.gray100,
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader(),
              if (BookModel.books.isNotEmpty)
                const BooksList().expand()
              else
                //Here we are checking if our data is null / Loading from database still it'll show an rounded loading circle bar to the screen

                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
