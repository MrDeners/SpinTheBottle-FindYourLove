import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppButton extends StatelessWidget {
  final String text;
  final AppIcon? icon;
  final Color? textColor;
  final TextStyle? textStyle;
  final Function() onTap;
  final bool isExpanded;
  final bool isBackgroundless;

  const AppButton({
    required this.text,
    this.icon,
    this.textColor,
    this.textStyle,
    required this.onTap,
    this.isExpanded = true,
    this.isBackgroundless = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppDimens.buttonHeight,
        decoration: BoxDecoration(
          border: Border.all(
              color: context.theme.colors.primaryText.withOpacity(0.5),
            width: AppDimens.buttonBorderWidth,
          ),
          borderRadius: BorderRadius.circular(
            AppDimens.buttonBorderRadius,
          ),
          color: isBackgroundless ? null : context.theme.colors.accent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.contentPadding16,
          ),
          child: Row(
            mainAxisSize: isExpanded ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (icon != null) ...<Widget>{
                icon!.call(),
                const SizedBox(width: AppDimens.contentPadding16),
              },
              Text(
                textAlign: TextAlign.center,
                text,
                style: textStyle ?? AppFonts.primary40.copyWith(
                  color: textColor ?? (isBackgroundless ? context.theme.colors.primaryText : context.theme.colors.buttonContent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
