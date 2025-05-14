import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import '../core/constants/colors.dart';
import 'app_dimensions.dart';

class AppText {
  static TextStyle? btn;

  // Headings
  static TextStyle? hl;
  static TextStyle? hlb;
  static TextStyle? hl1;
  static TextStyle? hl1_500;
  static TextStyle? hl1_300;
  static TextStyle? hl1Font20;
  static TextStyle? hlb1Font14;
  static TextStyle? hlb1;
  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h2b;
  static TextStyle? h3;
  static TextStyle? h3b;

  // Body
  static TextStyle? b1;
  static TextStyle? b1b;
  static TextStyle? b2;
  static TextStyle? b2b;

  // Label
  static TextStyle? l1;
  static TextStyle? l1b;
  static TextStyle? l2;
  static TextStyle? l2b;
  static TextStyle? ls;

  static init() {
    const b = FontWeight.bold;
    const w500 = FontWeight.w500;
    const w300 = FontWeight.w300;
    var baseStyle = GoogleFonts.inter(
      wordSpacing: 1,
      letterSpacing: .2,
      fontWeight: FontWeight.w500,
    );
    /*TextStyle(
    //  color: AppColors.textColor,
      wordSpacing: 1,
      letterSpacing: .2,
      fontWeight: FontWeight.w500,
    )*/
    ;
    hl = baseStyle.copyWith(
      fontSize: AppDimensions.font(25.0),
    );
    hlb = hl!.copyWith(fontWeight: b);
    // Scale font sizes using AppDimensions.font()
    hl1 = baseStyle.copyWith(
      fontSize: AppDimensions.font(16.0),
    );
    hlb1Font14 = hl!.copyWith(
      fontWeight: b,
      fontSize: AppDimensions.font(14),
    );
    hl1_500 = hl1!.copyWith(
      fontWeight: w500,
    );
    hl1_300 = hl1!.copyWith(
      fontWeight: w300,
    );
    hl1Font20 = hl1!.copyWith(
      fontSize: AppDimensions.font(18.0),
    );
    hlb1 = hl1!.copyWith(fontWeight: b);
    h1 = baseStyle.copyWith(
      fontSize: AppDimensions.font(12.0),
    );
    h1b = h1!.copyWith(fontWeight: b);

    h2 = baseStyle.copyWith(
      fontSize: AppDimensions.font(10),
    );
    h2b = h2!.copyWith(fontWeight: b);

    h3 = baseStyle.copyWith(
      fontSize: AppDimensions.font(8),
    );
    h3b = h3!.copyWith(fontWeight: b);
    ls = h1!.copyWith(
      fontWeight: FontWeight.w300,
      //   color: AppColors.textColor1,
      fontSize: AppDimensions.font(14),
    );

    b1 = baseStyle.copyWith(fontSize: AppDimensions.font(7));
    b1b = b1!.copyWith(fontWeight: b);

    b2 = baseStyle.copyWith(fontSize: AppDimensions.font(6.25));
    b2b = b2!.copyWith(fontWeight: b);

    l1 = baseStyle.copyWith(fontSize: AppDimensions.font(5));
    l1b = l1!.copyWith(fontWeight: b);

    l2 = baseStyle.copyWith(fontSize: AppDimensions.font(4));
    l2b = l2!.copyWith(fontWeight: b);
  }
}
