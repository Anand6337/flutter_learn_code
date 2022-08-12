import 'dart:math';
import 'dart:ui';
import 'package:firstflutter_app/pages/home_page.dart';
import 'package:firstflutter_app/pages/login_page.dart';
import 'package:firstflutter_app/utils/routes.dart';
import 'package:firstflutter_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build for UI
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Mythemes.lightTheme(context),
      darkTheme: Mythemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // initialRoute: "/HomePage",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
