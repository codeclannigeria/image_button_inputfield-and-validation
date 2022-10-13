import 'package:ccn_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// when working, you will modify all the colors in the color class to the colors you wish to use in your application
// and also in the theme class cause i just used random color

class AppTheme {
// 1
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.roboto(color: AppColors.greyColor),
    bodyText2: GoogleFonts.roboto(color: AppColors.greyColor),
    headline2: GoogleFonts.roboto(color: AppColors.greyColor),
    headline1: GoogleFonts.roboto(color: AppColors.greyColor),
    // there are other textstyles you can try out here too and play around with
  );
// 2
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.roboto(color: Colors.white),
    bodyText2: GoogleFonts.roboto(color: Colors.white),
    headline1: GoogleFonts.roboto(color: Colors.white),
    headline2: GoogleFonts.roboto(color: Colors.white),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    headline6: GoogleFonts.openSans(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
  );

  static ThemeData lightThemeData() {
    return ThemeData(
      textTheme: lightTextTheme,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)),
      iconTheme: const IconThemeData(color: Colors.black),
      colorScheme: const ColorScheme.light(
          primary: AppColors.primaryColor,
          secondary: AppColors.greyColor,
          error: AppColors.redColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.greyColor.withOpacity(0.88),
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.greyColor.withOpacity(0.7),
        unselectedItemColor: AppColors.greyColor.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: AppColors.greyColor),
        showUnselectedLabels: true,
      ),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      textTheme: darkTextTheme,
      primaryColor: AppColors.greyColor,
      scaffoldBackgroundColor: AppColors.greyColor,
      appBarTheme:
          const AppBarTheme(backgroundColor: AppColors.greyColor, elevation: 0),
      iconTheme: const IconThemeData(color: AppColors.greyColor),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: AppColors.greyColor,
        secondary: AppColors.greyColor,
        error: AppColors.greyColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.greyColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.greyColor,
        selectedItemColor: Colors.white70,
        unselectedItemColor: AppColors.greyColor.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: AppColors.greyColor),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        showUnselectedLabels: true,
      ),
    );
  }
}
