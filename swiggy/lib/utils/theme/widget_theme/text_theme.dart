import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy/const/AppColor.dart';

class TTextTheme{
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(

    displayLarge: GoogleFonts.montserrat(fontSize: 28,fontWeight: FontWeight.bold,color: AppColors.tDarkColor),
    displayMedium: GoogleFonts.montserrat(fontSize: 24,fontWeight: FontWeight.w700,color: AppColors.tDarkColor),
    displaySmall: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w700,color: AppColors.tDarkColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.tDarkColor),
    titleLarge: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.tDarkColor),
    bodyLarge: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal,color: AppColors.tDarkColor),
    bodyMedium: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal,color: AppColors.tDarkColor),
  );
  static TextTheme darkTextTheme = TextTheme(

  displayLarge: GoogleFonts.montserrat(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),
  displayMedium: GoogleFonts.montserrat(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white),
  displaySmall: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white),
  headlineMedium: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
  titleLarge: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),
  bodyLarge: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),
  bodyMedium: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal,color:Colors.white),
  );
}