import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  @JsonSerializable(explicitToJson: true)
  const factory UserEntity({
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
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

}

