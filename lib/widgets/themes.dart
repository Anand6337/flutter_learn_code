import 'package:flutter/material.dart';

class Mythemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      appBarTheme: AppBarTheme(
        color: Colors.deepOrange,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 23),
        // textTheme: Theme.of(context).textTheme,
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          // style: ButtonStyle(
          //     backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
          ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      appBarTheme: AppBarTheme(
        color: Colors.deepOrange,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 23),
        // textTheme: Theme.of(context).textTheme,
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          // style: ButtonStyle(
          //     backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
          ));
//Custom Colors will comes here ....such as (static Color color_name = Color(color_hex_value);)
}
