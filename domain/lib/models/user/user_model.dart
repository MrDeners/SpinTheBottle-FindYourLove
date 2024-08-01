import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

import '../../domain.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    @Default('') String id,
    @Default(Role.user) Role role,
    @Default('') String firstName,
    String? secondName,
    Gender? gender,
    int? age,
    @Default(0) int heartsAmount,
    @Default(0) double kissesAmount,
    @Default(AppImages.defaultAvatar) AppImage avatar,
    @Default(AppImages.defaultBorder) AppImage border,
    @Default(<String>['1']) List<String> availableBordersId,
    @Default(<String>['1']) List<String> availableBottleSkinsId,
    @Default(<String>['1']) List<String> availableTableSkinsId,
    @Default(<String>[]) List<String> achievedAchievementsId,
    @Default(SeasonPassUserModel()) SeasonPassUserModel seasonPass,
    @Default(LeagueUserModel()) LeagueUserModel league,
    @Default(<String, String?>{
      'vk': null,
      'instagram': null,
      'telegram': null,
      'ok': null,
    })
    Map<String, String?> links,
    @Default(CourtshipModel()) CourtshipModel courtship,
  }) = _UserModel;

  bool get isLinksEmpty =>
      links['vk'] == null &&
      links['instagram'] == null &&
      links['telegram'] == null &&
      links['ok'] == null;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
