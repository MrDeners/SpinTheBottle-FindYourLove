import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

part 'user_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class UserEntity {
  final String id;
  final String role;
  final String firstName;
  final String? secondName;
  final int? age;
  final int heartsAmount;
  final AppImage avatar;
  final AppImage border;
  final List<String> availableBordersId;
  final List<String> availableBottleSkinsId;
  final List<String> availableTableSkinsId;
  final List<String> achievedAchievementsId;

  const UserEntity({
    this.id = '',
    this.role = '',
    this.firstName = '',
    this.secondName = '',
    this.age = 0,
    this.heartsAmount = 0,
    this.avatar = AppImages.defaultAvatar,
    this.border = AppImages.defaultBorder,
    this.availableBordersId = const <String>['1'],
    this.availableBottleSkinsId = const <String>['1'],
    this.availableTableSkinsId = const <String>['1'],
    this.achievedAchievementsId = const <String>[],
  });

  const UserEntity.empty()
      : id = '',
        role = '',
        firstName = '',
        secondName = null,
        age = null,
        heartsAmount = 0,
        avatar = AppImages.defaultAvatar,
        border = AppImages.defaultBorder,
        availableBordersId = const <String>[],
        availableBottleSkinsId = const <String>[],
        availableTableSkinsId = const <String>[],
        achievedAchievementsId = const <String>[];

  static UserEntity? fromJson(Map<String, dynamic>? json) {
    return json == null ? null : _$UserEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
