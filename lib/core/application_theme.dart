import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ApplicationTheme {
  static Color primaryColor=const Color(0xff5D9CEC);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Color(0xFFDFECDB),
      colorScheme: ColorScheme.fromSeed(
          primary:primaryColor,
          seedColor:primaryColor,
          onSecondary: Colors.black

          ),
   textTheme: TextTheme(
     titleLarge: GoogleFonts.poppins(
       color: Colors.white,
       fontWeight: FontWeight.w700,
       fontSize: 24,
     ),
     bodyLarge: GoogleFonts.poppins(
       color:primaryColor ,
       fontWeight: FontWeight.w700,
       fontSize: 18,
     ),
     bodyMedium: GoogleFonts.poppins(
       color: Colors.black,
       fontWeight: FontWeight.w700,
       fontSize: 15,
     ),
     bodySmall: GoogleFonts.poppins
       (
       color: Colors.black,
       fontWeight: FontWeight.w400,
       fontSize: 12,
     )
   ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: primaryColor,size: 26),
      unselectedIconTheme: IconThemeData(color: Color(0xffC8C9CB),),
    ),
  );
}
