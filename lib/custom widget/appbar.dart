import 'package:flutter/material.dart';

import '../constant/index.dart';

class AppBarShared extends AppBar {
  final String stringTitle;
  Widget? title;
  Widget? leading;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? titleColor;
  final bool? centerTitle;
  final double? elevation;
  final Widget? action;

  AppBarShared({
    super.key,
    required this.stringTitle,
    this.backgroundColor = CleanUpColor.white,
    this.foregroundColor = CleanUpColor.black,
    this.centerTitle = true,
    this.title,
    this.titleColor,
    this.elevation = 0.4,
    this.leading,
    this.action,
  }) {
    title = Text(
      stringTitle,
      style: TextStyle(
        color: titleColor ?? CleanUpColor.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
