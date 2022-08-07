import 'package:firstflutter_app/home_page.dart';
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
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.blue

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
        // dialogBackgroundColor: Colors.black45,
        //     primarySwatch: Colors.blueGrey
      ),
      routes: {
        "/":(context) => HomePage(),
      },

    );
  }

}