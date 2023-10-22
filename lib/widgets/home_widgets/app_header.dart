import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "ESSPR".text.xl5.bold.color(Colors.deepOrangeAccent).make(),
        "the shopping era ".text.xl.make(),
      ],
    );
  }
}
