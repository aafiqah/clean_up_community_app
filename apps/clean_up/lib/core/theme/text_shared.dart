import 'package:clean_up/core/theme/index.dart';
import 'package:flutter/material.dart';

class TextStyleShared {
  TextStyleShared._();

  static const TextStyleVariationBak textStyle = TextStyleVariationBak();
}

class TextStyleVariationBak {
  const TextStyleVariationBak();

  TextStyle get title => TextStyle(
        fontFamily: 'inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.black,
      );

  TextStyle get subtitle => TextStyle(
        fontFamily: 'inter',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.black,
      );

  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: CleanUpColor.black,
      );

  TextStyle get bodySmall => TextStyle(
        fontFamily: 'inter',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: CleanUpColor.black,
      );
}