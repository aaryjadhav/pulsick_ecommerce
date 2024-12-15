import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TChipTheme{
  TChipTheme._();

  static ChipThemeData lightChipTheme= ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: GoogleFonts.poppins(color:Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme= ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: GoogleFonts.poppins(color:Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: Colors.white,
  );
}