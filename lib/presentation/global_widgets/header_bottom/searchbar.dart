import 'package:clean_up_community_app/core/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatefulWidget {
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

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  void _onTextChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.search,
      controller: widget.controller,
      onChanged: (value) {
        if (widget.value != null) {
          widget.value?.call(value);
        }
      },
      onFieldSubmitted: (value) {
        if (widget.onSubmitted != null) {
          widget.onSubmitted?.call(value);
        }
      },
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxHeight: widget.boxHeight ?? 50,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        fillColor: widget.fillColor,
        filled: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: CleanUpColor.greyMedium,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        prefixIcon:
            widget.controller != null && widget.controller!.text.isNotEmpty
                ? null
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: widget.prefixIconOnTap,
                      child: widget.prefixIcon,
                    ),
                  ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide:
              const BorderSide(color: CleanUpColor.greyLight, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide:
              const BorderSide(color: CleanUpColor.greyLight, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: CleanUpColor.greyLight,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
