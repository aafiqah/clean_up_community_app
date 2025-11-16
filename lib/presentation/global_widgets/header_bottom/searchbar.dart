import 'package:clean_up_community_app/core/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.searchOnTap,
    this.prefixIcon,
    this.prefixIconOnTap,
    this.value,
    this.borderRadius = 0,
    this.boxHeight = 0,
    this.fillColor,
    this.controller,
    this.onSubmitted,
    this.hintText,
    this.showPrefixIcon = true,
  });

  final Function()? searchOnTap;
  final Widget? prefixIcon;
  final Function()? prefixIconOnTap;
  final ValueChanged<String>? value;
  final double borderRadius;
  final double? boxHeight;
  final Color? fillColor;
  final TextEditingController? controller;
  final ValueChanged<String>? onSubmitted;
  final String? hintText;

  final bool showPrefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.search,
      onChanged: value,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxHeight: boxHeight ?? 50,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: CleanUpColor.greyMedium,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        prefixIcon: showPrefixIcon
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: prefixIconOnTap,
                  child: prefixIcon,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: CleanUpColor.greyLight, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: CleanUpColor.greyLight, width: 1.5),
        ),
      ),
    );
  }
}
