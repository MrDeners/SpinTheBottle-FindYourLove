part of 'profile_dialog_bloc.dart';

@immutable
class ProfileDialogState {
  final UserModel user;

  const ProfileDialogState({
    this.user = const UserModel(),
  });

  ProfileDialogState copyWith({
    UserModel? user,
  }) {
    return ProfileDialogState(
      user: user ?? this.user,
    );
  }
}
