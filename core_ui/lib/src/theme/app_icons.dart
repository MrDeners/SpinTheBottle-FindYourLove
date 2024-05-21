part of core_ui;

class AppIcons {
  static const String packageName = kPackageName;

  static const String _basePath = kIconsPath;
  static const String _bottleSkinsPath = kBottleSkinsPath;

  static const String _doorKey = '${_basePath}door.svg';
  static const String _heartPlusKey = '${_basePath}heart_plus.svg';
  static const String _musicKey = '${_basePath}music.svg';
  static const String _updateKey = '${_basePath}update.svg';
  static const String _searchKey = '${_basePath}search.svg';
  static const String _hideKey = '${_basePath}hide.svg';
  static const String _closeKey = '${_basePath}close.svg';
  static const String _backArrowKey = '${_basePath}back_arrow.svg';
  static const String _primaryUserProfileKey = '${_basePath}primary_user_profile.svg';
  static const String _secondaryUserProfileKey = '${_basePath}secondary_user_profile.svg';

  static const String _mainBottleSkinKey = '${_bottleSkinsPath}main_bottle_skin.svg';

  static const AppIcon door = AppIcon(_doorKey);
  static const AppIcon heartPlus = AppIcon(_heartPlusKey);
  static const AppIcon music = AppIcon(_musicKey);
  static const AppIcon update = AppIcon(_updateKey);
  static const AppIcon search = AppIcon(_searchKey);
  static const AppIcon hide = AppIcon(_hideKey);
  static const AppIcon close = AppIcon(_closeKey);
  static const AppIcon backArrow = AppIcon(_backArrowKey);
  static const AppIcon primaryUserProfile = AppIcon(_primaryUserProfileKey);
  static const AppIcon secondaryUserProfile = AppIcon(_secondaryUserProfileKey);

  static const AppIcon mainBottleSkin = AppIcon(_mainBottleSkinKey);
}
