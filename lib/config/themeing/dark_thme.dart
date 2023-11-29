import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDarkTheme {
  static ThemeData myDarkTheme = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.montserratTextTheme(
      const TextTheme(
        bodyMedium: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    scaffoldBackgroundColor: primaryColor,
  );
}
