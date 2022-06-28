import 'dart:ui';

import 'package:flutter/material.dart';

class ColorDef {
  static const gradientLight = Color(0xFFFF906C);
  static const gradientDark = Color(0xFFBB4E75);
}

const LinearGradient linearGradientGlobal = LinearGradient(
  colors: [ColorDef.gradientLight, ColorDef.gradientDark],
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
);

const LinearGradient linearGradientBottomBar = LinearGradient(
  colors: [
    ColorDef.gradientLight,
    ColorDef.gradientDark,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
