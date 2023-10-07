import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ? Class Warna
class ColorText{
  static const Color backgroundColor = Color(0xFFF6F8FB);
  static const Color primaryColor = Color(0xFFE5E5E5);
}

// * Class Theme
class ThemeText {

  ColorText colorText = ColorText();

  static TextTheme lightTextTheme = TextTheme(
    // * For Title Text
    titleMedium: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ),

    // * Label for Button Text
    labelLarge: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white
    ),
    // * Label for TextButton
    labelMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.blue
    ),
    // * Label for TextButton
    labelSmall: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey
    ),

    // * Label TextFormField
    headlineSmall: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black
    ),

    // * Body for Text
    bodySmall : GoogleFonts.poppins(
      fontSize: 16.0,
      color: Colors.grey,
      fontWeight: FontWeight.w400,
    ),
  );

  static ThemeData lightTheme(){
    return ThemeData(
      primaryColor: ColorText.primaryColor,
      backgroundColor: ColorText.backgroundColor,
      textTheme: lightTextTheme,
    );
  }
}

