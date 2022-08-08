import 'package:firstflutter_app/home_page.dart';
import 'package:firstflutter_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.acme().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),

      ),
      darkTheme: ThemeData(
        // dialogBackgroundColor: Colors.black45,
        //     primarySwatch: Colors.blueGrey
      ),
      initialRoute: "/loginPage",
      routes: {
        "/loginPage":(context) => loginPage(),
        "/Homepage":(context) => const HomePage(),

      },

    );
  }

}