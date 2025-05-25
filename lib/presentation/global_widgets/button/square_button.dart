import 'package:flutter/material.dart';

import '../../../core/index.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key,
    required this.onTap,
    required this.widget,
  });

  final Function() onTap;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: CleanUpColor.white,
        ),
        height: 60,
        width: 60,
        child: widget,
      ),
    );
  }
}
