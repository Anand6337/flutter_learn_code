import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class BooksImageClassForList extends StatelessWidget {
  final String image;

  const BooksImageClassForList({Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .p4
        .color(Vx.gray100)
        .make()
        .p16()
        .w32(context);
  }
}
