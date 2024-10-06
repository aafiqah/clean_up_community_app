import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/index.dart';

class Submitbutton extends StatelessWidget {
  const Submitbutton({super.key,required this.size, required this.title});

  final double size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      padding: EdgeInsets.all(SizeSpacing().doubleSpacing10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeSpacing().doubleSpacing5),
        color: CleanUpColor.buttonColor,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: CleanUpColor.white,
          fontWeight: FontWeight.w600,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
      ),
    );
  }
}
