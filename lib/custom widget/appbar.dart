import 'package:flutter/material.dart';

import '../constant/index.dart';

class AppBarShared extends AppBar {
  final String stringTitle;

  Widget? title;
  Widget? leading;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool? centerTitle;
  final double? elevation;

  AppBarShared({
    super.key,
    required this.stringTitle,
    this.backgroundColor = CleanUpColor.white,
    this.foregroundColor = CleanUpColor.black,
    this.centerTitle = true,
    this.title,
    this.elevation = 0.4,
    this.leading,
  }) {
    title = Text(
      stringTitle,
      style: const TextStyle(
        color: CleanUpColor.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
