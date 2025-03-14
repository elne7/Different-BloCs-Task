import 'package:flutter/material.dart';

class MyTheme {
  final ThemeData light = ThemeData(
    primaryColor: Colors.deepPurple,
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.deepPurple,
      secondary: Colors.black,
      error: Colors.redAccent,
      surfaceTint: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 3,
      backgroundColor: Colors.deepPurple,
      shadowColor: const Color.fromRGBO(39, 63, 219, 0.09),
      centerTitle: true,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22,
        color: Colors.white,
      ),
    ),
  );

  final ThemeData dark = ThemeData(
    primaryColor: const Color.fromARGB(255, 192, 156, 255),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Color.fromARGB(255, 192, 156, 255),
      secondary: Colors.white,
      error: Colors.redAccent,
      surfaceTint: Colors.transparent,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 21, 21, 21),
    appBarTheme: AppBarTheme(
      elevation: 3,
      backgroundColor: Color.fromARGB(255, 192, 156, 255),
      shadowColor: const Color.fromARGB(255, 170, 173, 198),
      centerTitle: true,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22,
        color: Colors.white,
      ),
    ),
  );
}
