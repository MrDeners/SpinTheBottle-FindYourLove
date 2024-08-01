import 'package:core/core.dart';

part 'season_pass_user_model.freezed.dart';
part 'season_pass_user_model.g.dart';

@freezed
class SeasonPassUserModel with _$SeasonPassUserModel {
  @JsonSerializable(explicitToJson: true)
  const factory SeasonPassUserModel({
    @Default(0) int level,
    @Default(0) double currentExperience,
    @Default(1) double levelUpExperience,
    @Default(false) bool isGoldPass,
  }) = _SeasonPassUserModel;

  const SeasonPassUserModel._();

  factory SeasonPassUserModel.fromJson(Map<String, dynamic> json) => _$SeasonPassUserModelFromJson(json);
}
