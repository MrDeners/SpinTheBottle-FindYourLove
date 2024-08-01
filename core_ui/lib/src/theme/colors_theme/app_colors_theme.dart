part of core_ui;

abstract class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  const AppColorsTheme();

  Color get transparent;

  Color get background;

  Color get backgroundDarkPrimary;

  Color get backgroundDarkSecondary;

  Color get border;

  Color get accent;

  Color get primaryText;

  Color get secondaryText;

  Color get title;

  Color get link;

  Color get textInputBackground;

  Color get textInputBorder;

  Color get buttonContent;

  Color get hintText;

  Color get success;

  Color get error;

  Color get buttonLightBackground;

  Gradient get mainBackgroundGradient;

  Gradient get shadowBackgroundGradient;

  Gradient get dailyGoalBackgroundGradient;

  Gradient get alertBackgroundGradient;

}
