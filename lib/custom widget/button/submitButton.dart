import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/index.dart';

class Submitbutton extends StatelessWidget {
  const Submitbutton(
      {
        super.key,
      required this.onTap,
      required this.size,
      required this.title,
      required this.buttonColor,
      required this.textButtonColor,
      required this.buttonRadius,
  });

  final Function() onTap;
  final double size;
  final String title;
  final Color buttonColor;
  final Color textButtonColor;
  final double buttonRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size,
        padding: EdgeInsets.symmetric(
          vertical: SizeSpacing().doubleSpacing15,
          horizontal: SizeSpacing().doubleSpacing10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonRadius),
          color: buttonColor,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textButtonColor,
            fontWeight: FontWeight.w600,
            fontFamily: GoogleFonts.inter().fontFamily,
          ),
        ),
      ),
    );
  }
}
