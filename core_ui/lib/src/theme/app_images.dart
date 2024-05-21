part of core_ui;

class AppImages {

  static const String packageName = kPackageName;

  static const String _basePath = kImagesPath;
  static const String _borderSkinsPath = kBorderSkinsPath;
  static const String _tableSkinsPath = kTableSkinsPath;

  static const String _battlePassPreviewKey = '${_basePath}battle_pass_preview.png';
  static const String _bottomSheetBackgroundKey = '${_basePath}bottom_sheet_background.png';
  static const String _defaultAvatarKey = '${_basePath}default_avatar.png';
  static const String _mainScreenBackgroundKey = '${_basePath}main_screen_background.png';
  static const String _playFieldScreenBackgroundKey = '${_basePath}play_field_screen_background.png';
  static const String _tableFullScreenBackgroundKey = '${_basePath}table_full_screen_background.png';
  static const String _mostPopularDonateKey = '${_basePath}most_popular_donate.png';
  static const String _namingKey = '${_basePath}naming.png';

  static const String _defaultBorderKey = '${_borderSkinsPath}default_border.png';
  static const String _redBorderKey = '${_borderSkinsPath}red_border.png';

  static const String _mainTableSkinKey = '${_tableSkinsPath}main_table_skin.png';

  static const AppImage battlePassPreview = AppImage(_battlePassPreviewKey);
  static const AppImage bottomSheetBackground = AppImage(_bottomSheetBackgroundKey);
  static const AppImage defaultAvatar = AppImage(_defaultAvatarKey);
  static const AppImage mainScreenBackground = AppImage(_mainScreenBackgroundKey);
  static const AppImage playFieldScreenBackground = AppImage(_playFieldScreenBackgroundKey);
  static const AppImage tableFullScreenBackground = AppImage(_tableFullScreenBackgroundKey);
  static const AppImage mostPopularDonate = AppImage(_mostPopularDonateKey);
  static const AppImage naming = AppImage(_namingKey);

  static const AppImage defaultBorder = AppImage(_defaultBorderKey);
  static const AppImage redBorder = AppImage(_redBorderKey);

  static const AppImage mainTableSkin = AppImage(_mainTableSkinKey);
}
