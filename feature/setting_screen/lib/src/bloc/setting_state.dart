part of 'setting_bloc.dart';

@immutable
class SettingState {
  final UserModel user;

  const SettingState({
    this.user = const UserModel(),
  });

  SettingState copyWith({
    UserModel? user,
  }) {
    return SettingState(
      user: user ?? this.user,
    );
  }
}
