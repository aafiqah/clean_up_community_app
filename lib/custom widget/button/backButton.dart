import 'package:flutter/material.dart';

import '../../constant/index.dart';

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
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context)
                .textTheme
                .bodyLarge!
                .color!
                .withOpacity((1) * .5),
          ),
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
