import 'dart:math';

import 'package:firstflutter_app/home_page.dart';
import 'package:firstflutter_app/login_page.dart';
import 'package:firstflutter_app/utils/routes.dart';
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
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.acme().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
      )
      ),
    debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        fontFamily: GoogleFonts.acme().fontFamily,
        // dialogBackgroundColor: Colors.black45,
        //     primarySwatch: Colors.blueGrey
      ),
      // initialRoute: "/loginPage",
      routes: {
        "/" : (context) => loginPage(),
        MyRoutes.loginRoute: (context) =>  loginPage(),
        MyRoutes.homeRoute: (context) =>const HomePage(),

      },


    );
  }

}