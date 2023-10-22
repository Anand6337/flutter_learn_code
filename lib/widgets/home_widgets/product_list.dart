import 'package:firstflutter_app/pages/home_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/products.dart';
import 'products_imageclassforlist.dart';

class BooksList extends StatelessWidget {
  const BooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final books = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailsPage(books: books),
                )),
            child: CatalogItem(books: books));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Items books;

  const CatalogItem({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(tag: Key, child: CatalogImage(image: books.product_img)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            books.product_name.text.xl.bold.make(),
            books.product_descp.text.make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.end,
              buttonPadding: EdgeInsets.zero,
              children: [
                "${books.product_price}".text.bold.xl.make().pOnly(right: 13),
                ElevatedButton(
                  onPressed: () {},
                  child: "Add to Cart".text.make(),
                ).h4(context),
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.roundedSM.square(150).make().py16();
  }
}
