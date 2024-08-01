import 'package:flutter/material.dart';

import '../../../../core_ui.dart';
import 'app_button_style.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final Function() onTap;
  final AppButtonStyle style;
  final bool isActive;
  final bool isExpanded;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final BorderSide? border;
  final BorderRadiusGeometry? borderRadius;

  const AppButton({
    required this.child,
    required this.onTap,
    this.style = AppButtonStyle.elevated,
    this.isActive = true,
    this.isExpanded = true,
    this.backgroundColor,
    this.padding,
    this.border,
    this.borderRadius,
    super.key,
  });

  const AppButton.outlined({
    required this.child,
    required this.onTap,
    this.style = AppButtonStyle.outlined,
    this.isActive = true,
    this.isExpanded = true,
    this.backgroundColor,
    this.padding,
    this.border,
    this.borderRadius,
    super.key,
  });

  Color getBackgroundColor(AppColorsTheme colors) {
    switch (style) {
      case AppButtonStyle.elevated:
        return colors.accent;
      case AppButtonStyle.outlined:
        return colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.theme.colors;

    return SizedBox(
      width: isExpanded ? double.infinity : null,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? getBackgroundColor(colors),
          padding: padding ?? const EdgeInsets.all(AppDimens.contentPadding8),
          shape: RoundedRectangleBorder(
            side: border ?? BorderSide(color: colors.border),
            borderRadius: borderRadius ?? BorderRadius.circular(AppDimens.mainBorderRadius),
          ),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: child,
      ),
    );
  }
}
