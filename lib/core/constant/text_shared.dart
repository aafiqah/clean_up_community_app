import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TextStyleShared {
  TextStyleShared._();

  static const TextStyleVariationBak textStyle = TextStyleVariationBak();
}

class TextStyleVariationBak {
  const TextStyleVariationBak();

  TextStyle get title => GoogleFonts.inter().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.black,
      );

  TextStyle get subtitle => GoogleFonts.inter().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.black,
      );

  TextStyle get bodyMedium => GoogleFonts.inter().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: CleanUpColor.black,
      );

  TextStyle get bodySmall => GoogleFonts.inter().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: CleanUpColor.black,
      );
}