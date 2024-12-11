import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constant/colors.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
    this.title = '',
    this.marked = '',
    this.hintText = '',
    this.keyboardType,
    this.titleStyleTitle,
    this.controller,
    this.maxline = 1,
    this.readOnly = false,
    this.hintStyle,
    this.errorStyle,
    this.validator,
    this.inputFormatters,
    this.padding = const EdgeInsets.only(top: 10, bottom: 30),
    this.focusNode,
    this.trailingChild,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.color,
    this.borderSide,
    this.obscureText,
  });

  final String title;
  final String marked;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextStyle? titleStyleTitle;
  final TextEditingController? controller;
  final int? maxline;
  final bool readOnly;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsetsGeometry padding;
  final FocusNode? focusNode;
  final Widget? trailingChild;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final Color? color;
  final BorderSide? borderSide;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title == '')
          const SizedBox.shrink()
        else
          Row(
            children: [
              Text(title, style: titleStyleTitle),
              if (marked != '')
                Text(
                  marked,
                  style: titleStyleTitle?.copyWith(
                    color: CleanUpColor.redMedium,
                  ),
                ),
              const Spacer(),
              trailingChild ?? const SizedBox.shrink(),
            ],
          ),
        Container(
          padding: padding,
          margin: const EdgeInsets.only(top: 3),
          child: TextFormField(
            onChanged: onChanged,
            inputFormatters: inputFormatters,
            focusNode: focusNode,
            readOnly: readOnly,
            maxLines: maxline,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText ?? false,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            validator: validator ??
                (String? val) {
                  if (val == null || val.trim().isEmpty) {
                    return '$title cannot be empty';
                  } else {
                    return null;
                  }
                },
            decoration: InputDecoration(
              filled: true,
              fillColor: color ?? CleanUpColor.white,
              prefix: prefixIcon,
              suffix: suffixIcon,
              hintStyle: hintStyle ??
                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: CleanUpColor.greyMedium,
                      ),
              hintText: hintText,
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: borderSide ??
                    const BorderSide(
                      color: CleanUpColor.greyMedium,
                    ),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: CleanUpColor.redMedium,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: CleanUpColor.redMedium,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: CleanUpColor.blueMedium,
                ),
              ),
              errorStyle: errorStyle,
            ),
          ),
        ),
      ],
    );
  }
}
