import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppGradientWrapper extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final List<Color>? colors;

  final Gradient? gradient;
  final BorderRadiusGeometry? borderRadius;

  const AppGradientWrapper({
    this.colors,
    this.backgroundColor,
    required this.child,
    this.gradient,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor ?? context.theme.colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          gradient: gradient ?? context.theme.colors.mainBackgroundGradient,
        ),
        child: child,
      ),
    );
  }
}
