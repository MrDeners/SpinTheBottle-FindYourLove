part of 'profile_bloc.dart';

@immutable
class ProfileState {
  final UserModel user;

  const ProfileState({
    this.user = const UserModel.empty(),
  });

  ProfileState copyWith({
    UserModel? user,
  }) {
    return ProfileState(
      user: user ?? this.user,
    );
  }
}
