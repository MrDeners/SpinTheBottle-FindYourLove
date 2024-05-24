import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppIconElementButton extends StatelessWidget {
  final String text;
  final Color? textColor;

  final AppIcon icon;
  final Function()? onTap;
  final bool isActive;

  const AppIconElementButton({
    required this.text,
    required this.icon,
    this.textColor,
    this.onTap,
    this.isActive = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Container(
            height: AppDimens.smallIconSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive
                  ? context.theme.colors.background
                  : context.theme.colors.buttonLightBackground,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.contentPadding16,
              ),
              child: icon.call(
                size: AppDimens.EmotionIconHeight,
              ),
            ),
          ),
          Text(
            text,
            style:
                AppFonts.primary14.copyWith(color: textColor ?? context.theme.colors.primaryText),
          ),
        ],
      ),
    );
  }
}
