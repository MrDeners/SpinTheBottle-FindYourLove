import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppGradientWrapper extends StatelessWidget {
  final Widget child;
  final List<Color>? colors;

  final Gradient? gradient;

  const AppGradientWrapper({
    this.colors,
    required this.child,
    this.gradient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.colors.background,
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient ?? context.theme.colors.mainBackgroundGradient,
        ),
        child: child,
      ),
    );
  }
}
