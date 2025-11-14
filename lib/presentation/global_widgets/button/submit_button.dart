import 'package:flutter/material.dart';
import '../../../core/theme/index.dart';

class Submitbutton extends StatelessWidget {
  const Submitbutton({
    super.key,
    this.text,
    this.padding,
    this.widget,
    this.height,
    this.width,
    this.onPressed,
    this.isLoading = false,
    this.buttonColor = CleanUpColor.primary,
    this.textColor = CleanUpColor.white,
    this.shadowColor = CleanUpColor.black,
    this.fullColor = true,
    this.borderRadius,
  });
  final String? text;
  final double? height;
  final EdgeInsets? padding;
  final double? width;
  final Widget? widget;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color buttonColor;
  final Color textColor;
  final Color shadowColor;
  final bool fullColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: SizedBox(
        height: height ?? 45,
        width: width,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shadowColor: shadowColor,
            backgroundColor: (isLoading || onPressed == null)
                ? CleanUpColor.greyMedium
                : (fullColor ? buttonColor : CleanUpColor.white),
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5),
            ),
            side: BorderSide(
              color: (isLoading || onPressed == null)
                  ? CleanUpColor.greyMedium
                  : buttonColor,
            ),
          ),
          child:
              widget ??
                  FittedBox(
                    child: Text(
                      isLoading ? 'Loading' : text ?? '',
                      style: TextStyleShared.textStyle.bodyMedium.copyWith(
                        fontSize: 14,
                        color: isLoading ? CleanUpColor.disabledText : textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
        ),
      ),
    );
  }
}
