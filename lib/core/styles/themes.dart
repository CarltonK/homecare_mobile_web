import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core.dart';

ThemeData get lightTheme {
  return ThemeData(
    primarySwatch: Colors.blue,
    useMaterial3: true,
    cardTheme: const CardTheme(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.inter(fontSize: 12.0),
      bodyLarge: GoogleFonts.inter(fontSize: 12.0),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppColors.greyDark),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: kTitle,
    ),
    scaffoldBackgroundColor: AppColors.white,
    switchTheme: SwitchThemeData(
      trackColor: WidgetStateProperty.all<Color>(AppColors.trekBlue),
    ),
  );
}

///Expand darkTheme to meet your needs
ThemeData get darkTheme {
  return ThemeData();
}
