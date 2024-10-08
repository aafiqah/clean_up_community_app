import 'package:flutter/material.dart';

import '../../constant/index.dart';

class Submitbutton extends StatelessWidget {
  const Submitbutton({
    super.key,
    required this.onTap,
    this.width,
    this.height,
    required this.widget,
    required this.buttonColor,
    required this.buttonRadius,
    this.boxShadow,
  });

  final Function() onTap;
  final double? width;
  final double? height;
  final Widget widget;
  final Color buttonColor;
  final double buttonRadius;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
          vertical: SizeSpacing().doubleSpacing15,
          horizontal: SizeSpacing().doubleSpacing10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonRadius),
          color: buttonColor,
          boxShadow: boxShadow,
        ),
        child: widget,
      ),
    );
  }
}
