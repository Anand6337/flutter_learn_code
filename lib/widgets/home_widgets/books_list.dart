import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/products.dart';
import 'books_imageclassforlist.dart';

class BooksList extends StatelessWidget {
  const BooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final books = BookModel.books[index];
          return BooksItem(books: books);
        },
        itemCount: BookModel.books.length);
  }
}

class BooksItem extends StatelessWidget {
  final Items books;

  const BooksItem({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        BooksImageClassForList(image: books.book_img),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            books.book_name.text.lg.bold.make(),
            books.book_descp.text.make(),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              buttonPadding: Vx.mH8,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    //     backgroundColor: And way is how to change Background color of Button in Vx
                    //     // MaterialStateProperty.all(Vx.neutral600)),
                    shape: MaterialStatePropertyAll(StadiumBorder()),
                  ),
                  child: "Read Now".text.make(),
                ).h4(context),
              ],
            ).pOnly(right: 8)
          ],
        ))
      ],
    )).white.roundedSM.square(150).make().py16();
  }
}
