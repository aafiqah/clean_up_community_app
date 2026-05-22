import 'dart:ui';

import 'package:flutter/material.dart';

class CleanUpColor {
  CleanUpColor._();

  // =========================
  // PRIMARY - Forest Green
  // =========================
  static const Color primary0 = Color(0xFF000000);
  static const Color primary10 = Color(0xFF002204);
  static const Color primary20 = Color(0xFF003909);
  static const Color primary30 = Color(0xFF005312);
  static const Color primary40 = Color(0xFF1B6D24);
  static const Color primary50 = Color(0xFF1C6D25); // Main Brand
  static const Color primary60 = Color(0xFF38873A);
  static const Color primary70 = Color(0xFF53A252);
  static const Color primary80 = Color(0xFF6DBD6A);
  static const Color primary90 = Color(0xFF88D982);
  static const Color primary95 = Color(0xFFA3F69C);
  static const Color primary99 = Color(0xFFC8FFBF);
  static const Color primary100 = Color(0xFFFFFFFF);

  // =========================
  // SECONDARY - Sky Blue
  // =========================
  static const Color secondary0 = Color(0xFF000000);
  static const Color secondary10 = Color(0xFF001D32);
  static const Color secondary20 = Color(0xFF003353);
  static const Color secondary30 = Color(0xFF004A75);
  static const Color secondary40 = Color(0xFF00639A);
  static const Color secondary50 = Color(0xFF0288D1); // Main Secondary
  static const Color secondary60 = Color(0xFF007DC0);
  static const Color secondary70 = Color(0xFF2B97E1);
  static const Color secondary80 = Color(0xFF51B2FE);
  static const Color secondary90 = Color(0xFF96CCFF);
  static const Color secondary95 = Color(0xFFCEE5FF);
  static const Color secondary99 = Color(0xFFE8F2FF);
  static const Color secondary100 = Color(0xFFFFFFFF);

  // =========================
  // TERTIARY - Earth Brown
  // =========================
  static const Color tertiary0 = Color(0xFF000000);
  static const Color tertiary10 = Color(0xFF2B160F);
  static const Color tertiary20 = Color(0xFF422B22);
  static const Color tertiary30 = Color(0xFF5B4137);
  static const Color tertiary40 = Color(0xFF75584D);
  static const Color tertiary50 = Color(0xFF8D6E63); // Main Tertiary
  static const Color tertiary60 = Color(0xFF8F7065);
  static const Color tertiary70 = Color(0xFFAB897E);
  static const Color tertiary80 = Color(0xFFC7A497);
  static const Color tertiary90 = Color(0xFFE4BEB2);
  static const Color tertiary95 = Color(0xFFFFDBCE);
  static const Color tertiary99 = Color(0xFFFFEDE7);
  static const Color tertiary100 = Color(0xFFFFFFFF);

  // =========================
  // NEUTRAL - Soft Mint
  // =========================
  static const Color neutral0 = Color(0xFF000000);
  static const Color neutral10 = Color(0xFF171D14);
  static const Color neutral20 = Color(0xFF2C3228);
  static const Color neutral30 = Color(0xFF42493E);
  static const Color neutral40 = Color(0xFF596055);
  static const Color neutral50 = Color(0xFF72796D);
  static const Color neutral60 = Color(0xFF8C9386);
  static const Color neutral70 = Color(0xFFA6ADA0);
  static const Color neutral80 = Color(0xFFC2C9BB);
  static const Color neutral90 = Color(0xFFDEE5D6);
  static const Color neutral95 = Color(0xFFECF3E4);
  static const Color neutral99 = Color(0xFFF1F8E9); // Main Background
  static const Color neutral100 = Color(0xFFFFFFFF);

  // =========================
  // SEMANTIC COLORS
  // =========================
  static const Color success = primary50;
  static const Color info = secondary50;
  static const Color warning = Color(0xFFFFB300);
  static const Color error = Color(0xFFE53935);

  // =========================
  // COMMON UI COLORS
  // =========================
  static const Color primary = primary50;
  static const Color secondary = secondary50;
  static const Color tertiary = tertiary50;

  static const Color scaffoldBackground = neutral99;
  static const Color cardBackground = neutral100;

  static const Color textPrimary = neutral10;
  static const Color textSecondary = neutral40;
  static const Color disabledText = neutral60;

  static const Color divider = neutral80;
  static const Color searchBarColor = neutral95;

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);

  // =========================
  // BUTTON STATES
  // =========================
  static const Color buttonEnabled = primary50; // #2E7D32 (Forest Green)
  static const Color buttonDisabled = neutral50; // darker sky blue for disabled state
}
