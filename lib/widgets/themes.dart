import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mythemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.deepOrange,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 23),
        textTheme: Theme.of(context).textTheme,
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.black45,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 23),
        textTheme: Theme.of(context).textTheme,
      ));
}
