import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

import '../../domain.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  final String id;
  final String role;
  final String firstName;
  final String? secondName;
  final int? age;
  final int heartsAmount;
  final double kissesAmount;
  final AppImage avatar;
  final AppImage border;
  final List<String> availableBordersId;
  final List<String> availableBottleSkinsId;
  final List<String> availableTableSkinsId;
  final List<String> achievedAchievementsId;

  const UserModel({
    this.id = 'user',
    this.role = '',
    this.firstName = '',
    this.secondName = '',
    this.age = 0,
    this.heartsAmount = 0,
    this.kissesAmount = 0,
    this.avatar = AppImages.defaultAvatar,
    this.border = AppImages.defaultBorder,
    this.availableBordersId = const <String>['1'],
    this.availableBottleSkinsId = const <String>['1'],
    this.availableTableSkinsId = const <String>['1'],
    this.achievedAchievementsId = const <String>[],
  });

  const UserModel.empty()
      : id = '',
        role = '',
        firstName = '',
        secondName = null,
        age = null,
        heartsAmount = 0,
        kissesAmount = 0,
        avatar = AppImages.defaultAvatar,
        border = AppImages.defaultBorder,
        availableBordersId = const <String>['1'],
        availableBottleSkinsId = const <String>['1'],
        availableTableSkinsId = const <String>['1'],
        achievedAchievementsId = const <String>[];

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
