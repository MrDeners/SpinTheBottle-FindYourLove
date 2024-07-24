part of 'profile_alert_dialog_bloc.dart';

@immutable
class ProfileAlertDialogState {
  final UserModel? user;

  const ProfileAlertDialogState({
    this.user = const UserModel(),
  });

  ProfileAlertDialogState copyWith({
    UserModel? user,
  }) {
    return ProfileAlertDialogState(
      user: user ?? this.user,
    );
  }
}
