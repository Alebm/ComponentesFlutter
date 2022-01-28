import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primerio
    primaryColor: primary,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),

    // TextButton Theme

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      //floatingLabelStyle: TextStyle(color: primary),
      labelStyle: const TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
