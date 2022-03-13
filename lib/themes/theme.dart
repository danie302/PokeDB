import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.red[600]!;
  static final Color success = Colors.green[400]!;
  static final Color warning = Colors.yellow[800]!;
  static final Color danger = Colors.red[800]!;
  static final Color grey = Colors.grey[300]!;
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: grey,
    appBarTheme: AppBarTheme(
      color: primary,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primary,
    ),
    iconTheme: IconThemeData(
      color: primary,
    ),
    listTileTheme: ListTileThemeData(
      iconColor: primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: grey,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primary,
    ),
    iconTheme: IconThemeData(
      color: primary,
    ),
    listTileTheme: ListTileThemeData(
      iconColor: primary,
    ),
  );
}
