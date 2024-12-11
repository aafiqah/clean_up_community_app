import 'package:flutter/material.dart';

import '../../../core/constant/index.dart';

class AppBarShared extends AppBar {
  final String stringTitle;
  @override
  Widget? title;
  @override
  Widget? leading;
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  final Color? titleColor;
  @override
  final bool? centerTitle;
  @override
  final double? elevation;
  @override
  final List<Widget>? actions;

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
    this.actions,
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
