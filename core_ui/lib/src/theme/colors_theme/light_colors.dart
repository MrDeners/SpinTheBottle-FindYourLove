import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class LightColorsTheme extends AppColorsTheme {
  const LightColorsTheme();

  @override
  Color get transparent => AppColors.transparent;

  @override
  Color get background => AppColors.lightWhite;

  @override
  Color get backgroundDarkPrimary => AppColors.lightGray;

  @override
  Color get backgroundDarkSecondary => AppColors.spanishGray;

  @override
  Color get accent => AppColors.lavenderIndigo;

  @override
  Color get border => AppColors.chineseBlack;

  @override
  Color get primaryText => AppColors.chineseBlack;

  @override
  Color get secondaryText => AppColors.chineseBlack74;

  @override
  Color get hintText => AppColors.chineseBlack64;

  @override
  Color get title => AppColors.chineseBlack;

  @override
  Color get link => AppColors.lavenderIndigo;

  @override
  Color get textInputBackground => AppColors.white;

  @override
  Color get textInputBorder => AppColors.paleLavender;

  @override
  Color get buttonContent => AppColors.white;

  @override
  Color get buttonLightBackground => AppColors.lightBlack;

  @override
  Color get success => AppColors.successGreen;

  @override
  Color get error => AppColors.wrongRed;

  @override
  Gradient get alertBackgroundGradient => const LinearGradient(
        colors: AppColors.alertBackgroundGradient,
        begin: FractionalOffset(0, -0.8),
        end: FractionalOffset.bottomLeft,
        stops: <double>[0, 0.65, 1],
      );

  @override
  Gradient get mainBackgroundGradient => const LinearGradient(
        colors: AppColors.mainBackgroundGradient,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  @override
  Gradient get shadowBackgroundGradient => const LinearGradient(
        colors: AppColors.shadowBackgroundGradient,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: <double>[0, 0.24, 0, 6, 1],
      );

  @override
  Gradient get dailyGoalBackgroundGradient => const LinearGradient(
        colors: AppColors.dailyGoalBackgroundGradient,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  @override
  ThemeExtension<AppColorsTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppColorsTheme> lerp(
    covariant ThemeExtension<AppColorsTheme>? other,
    double t,
  ) {
    return this;
  }
}
