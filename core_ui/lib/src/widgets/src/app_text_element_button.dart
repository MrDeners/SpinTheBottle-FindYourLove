import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppTextElementButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Function()? onTap;
  final Function()? onDelete;
  final bool isActive;
  final bool isShort;

  const AppTextElementButton({
    required this.text,
    this.textColor,
    this.onTap,
    this.onDelete,
    this.isActive = false,
    this.isShort = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: isShort ? AppDimens.shortButtonHeight : AppDimens.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppDimens.buttonBorderRadius,
          ),
          border: Border.all(
            color: isActive ? context.theme.colors.background : context.theme.colors.hintText,
          ),
          color: isActive ? context.theme.colors.background : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.contentPadding16,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: AppFonts.primary18.copyWith(
                  color: textColor ?? (isActive ? context.theme.colors.primaryText : context.theme.colors.buttonContent),
                ),
                textAlign: TextAlign.center,
              ),
              onDelete != null ? AppIcons.close.call(onTap: onDelete) : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
