import 'package:clean_up/core/theme/index.dart';
import 'package:flutter/material.dart';

class TextStyleShared {
  TextStyleShared._();

  static const TextStyleVariationBak textStyle = TextStyleVariationBak();
}

class TextStyleVariationBak {
  const TextStyleVariationBak();

  // =========================
  // HEADLINE
  // Font: Plus Jakarta Sans
  // =========================

  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'PlusJakartaSans',
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: CleanUpColor.textPrimary,
        height: 1.2,
      );

  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'PlusJakartaSans',
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: CleanUpColor.textPrimary,
        height: 1.3,
      );

  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'PlusJakartaSans',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.textPrimary,
        height: 1.3,
      );

  // =========================
  // TITLE
  // Font: Plus Jakarta Sans
  // =========================

  TextStyle get title => TextStyle(
        fontFamily: 'PlusJakartaSans',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.textPrimary,
        height: 1.4,
      );

  TextStyle get subtitle => TextStyle(
        fontFamily: 'PlusJakartaSans',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.textPrimary,
        height: 1.4,
      );

  // =========================
  // BODY
  // Font: Be Vietnam Pro
  // =========================

  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'BeVietnamPro',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: CleanUpColor.textPrimary,
        height: 1.5,
      );

  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'BeVietnamPro',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: CleanUpColor.textPrimary,
        height: 1.5,
      );

  TextStyle get bodySmall => TextStyle(
        fontFamily: 'BeVietnamPro',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: CleanUpColor.textSecondary,
        height: 1.5,
      );

  // =========================
  // LABEL
  // Font: Be Vietnam Pro
  // =========================

  TextStyle get labelLarge => TextStyle(
        fontFamily: 'BeVietnamPro',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: CleanUpColor.textPrimary,
        height: 1.3,
      );

  TextStyle get labelMedium => TextStyle(
        fontFamily: 'BeVietnamPro',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: CleanUpColor.textPrimary,
        height: 1.3,
      );

  TextStyle get labelSmall => TextStyle(
        fontFamily: 'BeVietnamPro',
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: CleanUpColor.textSecondary,
        height: 1.3,
      );
}