import 'package:flutter/material.dart';

class Variables {
  static Color getBgColor() => const Color.fromARGB(1, 0, 0, 0);

  static EdgeInsets getBottomLeftRightPadding () => const EdgeInsets.only(
    bottom: 16.0,
    left: 16.0,
    right: 16.0,
  );

  static EdgeInsets getTopLeftRightPadding() => const EdgeInsets.only(
        top: 16.0,
        left: 16.0,
        right: 16.0,
      );

  static EdgeInsets getLeftRightPadding() => const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      );

  static EdgeInsets getPadding() => const EdgeInsets.all(16.0);
}
