import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._();
  //Customizable White Text Theme
  static TextTheme lightTextTheme =TextTheme(
    headlineLarge: GoogleFonts.poppins().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: GoogleFonts.poppins().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
  
    titleLarge: GoogleFonts.poppins().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium: GoogleFonts.poppins().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleSmall: GoogleFonts.poppins().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),

    bodyLarge: GoogleFonts.poppins().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: GoogleFonts.poppins().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),
    bodySmall: GoogleFonts.poppins().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),

    labelLarge: GoogleFonts.poppins().copyWith(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),
    labelMedium: GoogleFonts.poppins().copyWith(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),
  );

  //Customizable Dark Text Theme
  static TextTheme darkTextTheme =TextTheme(
    headlineLarge: GoogleFonts.poppins().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: GoogleFonts.poppins().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
  
    titleLarge: GoogleFonts.poppins().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: GoogleFonts.poppins().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
    titleSmall: GoogleFonts.poppins().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),

    bodyLarge: GoogleFonts.poppins().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: GoogleFonts.poppins().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodySmall: GoogleFonts.poppins().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),

    labelLarge: GoogleFonts.poppins().copyWith(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
    labelMedium: GoogleFonts.poppins().copyWith(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),
  );
}