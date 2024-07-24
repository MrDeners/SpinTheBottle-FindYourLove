import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

import 'enums/role_enum.dart';
import 'enums/gender_enum.dart';

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
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

}

