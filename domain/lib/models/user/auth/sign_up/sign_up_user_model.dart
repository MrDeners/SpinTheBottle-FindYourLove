import 'package:core/core.dart';

part 'sign_up_user_model.freezed.dart';
part 'sign_up_user_model.g.dart';

@freezed
class SignUpUserModel with _$SignUpUserModel {
  @JsonSerializable(explicitToJson: true)
  const factory SignUpUserModel({
    @Default('') String name,
    @Default('') String login,
    @Default('') String password,
  }) = _SignUpUserModel;

  const SignUpUserModel._();

  factory SignUpUserModel.fromJson(Map<String, dynamic> json) => _$SignUpUserModelFromJson(json);
}