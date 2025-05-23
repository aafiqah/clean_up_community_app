import 'package:flutter/material.dart';

import '../../../core/constant/index.dart';

class BackButtonGlobal extends StatelessWidget {
  const BackButtonGlobal({
    super.key,
    required this.onPressed,
    this.size,
    this.circleBg,
  });

  final Function() onPressed;
  final double? size;
  final bool? circleBg;

  @override
  Widget build(BuildContext context) {
    if (circleBg != true) {
      return IconButton(
        onPressed: onPressed,
        splashColor: CleanUpColor.transparent,
        icon: const ClipOval(
          child: ColoredBox(
              color: CleanUpColor.white,
              child: Icon(
                Icons.arrow_back,
                size: 20,
              )),
        ),
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        iconSize: size ?? 44,
      );
    } else {
      return MaterialButton(
        splashColor: CleanUpColor.transparent,
        onPressed: onPressed,
        minWidth: 35,
        padding: EdgeInsets.zero,
        child: Container(
          padding: EdgeInsets.all(SizeSpacing().doubleSpacing10),
          child: const ClipOval(
            child: ColoredBox(
                color: CleanUpColor.white,
                child: Icon(
                  Icons.arrow_back,
                  size: 20,
                )),
          ),
        ),
      );
    }
  }
}
