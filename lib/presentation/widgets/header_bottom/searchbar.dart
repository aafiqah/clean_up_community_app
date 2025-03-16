import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    this.onTap,
    this.iconOnTap,
    this.value,
    this.borderRadius = 0,
    this.fillColor,
    this.controller,
    this.onSubmitted,
    this.hintText,
  });

  final Function()? onTap;
  final Function()? iconOnTap;
  final ValueChanged<String>? value;
  final double borderRadius;
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
      onTap:widget.onTap ,
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
        constraints: const BoxConstraints(
          maxHeight: 50,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        fillColor: widget.fillColor ?? CleanUpColor.white,
        filled: true,
        hintText: widget.hintText ?? 'Search',
        hintStyle: TextStyle(
          color: CleanUpColor.greyMedium,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        prefixIcon:
            widget.controller != null && widget.controller!.text.isNotEmpty
                // ? Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 15),
                //     child: GestureDetector(
                //       child: InkWell(
                //         onTap:
                //          widget.iconOnTap,
                //         // () {
                //         //   widget.controller!.clear();
                //         //   setState(() {});
                //         //   if (widget.onSubmitted != null) {
                //         //     widget.onSubmitted?.call('');
                //         //   }
                //         //   if (widget.value != null) {
                //         //     widget.value?.call('');
                //         //   }
                //         // },
                //         child: const Icon(
                //           Icons.close,
                //           color: CleanUpColor.greyMedium,
                //           size: 30,
                //         ),
                //       ),
                //     ),
                //   )
                ? null
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      // onTap: widget.iconOnTap,
                      child: const Icon(
                        Icons.search,
                        color: CleanUpColor.greyMedium,
                        size: 30,
                      ),
                    ),
                  ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: CleanUpColor.greyLight,
            width: 1.5,
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
