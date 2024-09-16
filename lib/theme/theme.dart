import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: false,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
    ),
  ),
  primarySwatch: Colors.pink,
  colorScheme: const ColorScheme.light(
    primary: Colors.pink,
    onPrimary: Colors.white,
    onSurface: Colors.black,
    inverseSurface: Colors.white,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: false,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      color: Colors.red,
      //   color: Colors.black54,
    ),
  ),
  primarySwatch: Colors.pink,
  colorScheme: const ColorScheme.dark(
    primary: Colors.pink,
    onPrimary: Colors.white,
    onSurface: Colors.white,
    inverseSurface: Colors.black,
  ),
);
