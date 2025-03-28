import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'style.dart';

///Styles used for Text around the app
final kTitle = GoogleFonts.inter(
  color: Colors.black,
  fontWeight: FontWeight.w600,
  letterSpacing: .2,
  fontSize: 24,
);

final kNormalWhite = GoogleFonts.inter(
  color: AppColors.white,
  fontWeight: FontWeight.w600,
);

final kNormalBlack = GoogleFonts.inter(
  color: AppColors.black,
  fontWeight: FontWeight.w600,
);

final kLightBlack = GoogleFonts.inter(
  color: AppColors.black,
  fontWeight: FontWeight.w400,
);

///System styles
const kStatusBarLight = SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.dark,
);
const kStatusBarDark = SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.light,
);
