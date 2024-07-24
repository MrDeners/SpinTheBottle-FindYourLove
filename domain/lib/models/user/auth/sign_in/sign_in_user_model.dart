import 'package:core/core.dart';

part 'sign_in_user_model.freezed.dart';
part 'sign_in_user_model.g.dart';

@freezed
class SignInUserModel with _$SignInUserModel {
  @JsonSerializable(explicitToJson: true)
  const factory SignInUserModel({
    @Default('') String login,
    @Default('') String password,
  }) = _SignInUserModel;

  const SignInUserModel._();

  factory SignInUserModel.fromJson(Map<String, dynamic> json) => _$SignInUserModelFromJson(json);

}
