import 'package:firstflutter_app/models/products.dart';
import 'package:firstflutter_app/pages/orderPage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Items books;

  const HomeDetailsPage({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.end,
        buttonPadding: EdgeInsets.zero,
        children: [
          "${books.product_price}".text.red800.bold.xl4.make().pOnly(right: 33),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => orderPage(books: books),
                  ));
            },
            // style: const ButtonStyle(
            //   //     backgroundColor: And way is how to change Background color of Button in Vx
            //   //     // MaterialStateProperty.all(Vx.neutral600)),
            //   shape: MaterialStateProperty(StadiumBorder()),
            // ),
            child: "Buy".text.xl.makeCentered().wh(80, 80),
          ).h4(context),
        ],
      ).p32(),
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(tag: Key, child: Image.network(books.product_img))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 32.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: const Color.fromRGBO(145, 190, 183, 3),
                width: context.screenWidth,
                child: Column(
                  children: [
                    books.product_name.text.xl4.center.bold.make(),
                    books.product_price.text.xl2.center.make(),
                    books.product_descp.text.xl.center.make(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
