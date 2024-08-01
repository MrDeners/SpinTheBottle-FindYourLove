import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../../core_ui.dart';


class AppPassProgressWidget extends StatelessWidget {
  final SeasonPassUserModel seasonPass;

  const AppPassProgressWidget({
    required this.seasonPass,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.theme.colors;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colors.border,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
        child: AppImages.mainTableSkin.callBackground(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.contentPadding20,
            vertical: AppDimens.contentPadding4,
          ),
          child: Column(
            children: <Widget>[
              Text(
                LocaleKeys.profile_level.watchTr(context),
                style: AppFonts.primary12,
              ),
              LinearProgressIndicator(
                value: seasonPass.currentExperience / seasonPass.levelUpExperience * 100,
                borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
                backgroundColor: colors.backgroundDarkPrimary,
                color: colors.accent,
                minHeight: AppDimens.progressBarHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
