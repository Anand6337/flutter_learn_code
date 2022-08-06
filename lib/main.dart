import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build for UI
    return MaterialApp(
      home:  Material(
       child: Center( child: Container(
            child: Text('WelCome to Flutter UI Works'),
        ))
      ),
    );
  }

}