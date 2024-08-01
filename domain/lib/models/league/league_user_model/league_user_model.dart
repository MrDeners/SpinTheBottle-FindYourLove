import 'package:core/core.dart';

import '../../../domain.dart';

part 'league_user_model.freezed.dart';
part 'league_user_model.g.dart';

@freezed
class LeagueUserModel with _$LeagueUserModel {
  @JsonSerializable(explicitToJson: true)
  const factory LeagueUserModel({
    @Default(LeagueLevel.wood) LeagueLevel leagueLevel,
    @Default(0) int position,
    @Default(0) int score,
    DateTime? timeLeft,
    @Default(<UserModel>[]) List<UserModel> bestLeaguePlayers,
    @Default(<UserModel>[]) List<UserModel> playersNearUser,
  }) = _LeagueUserModel;

  const LeagueUserModel._();

  factory LeagueUserModel.fromJson(Map<String, dynamic> json) => _$LeagueUserModelFromJson(json);
}
