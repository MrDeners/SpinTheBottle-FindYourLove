part of 'profile_bloc.dart';

@immutable
class ProfileState {
  final UserModel user;
  final UserModel newUser;

  const ProfileState({
    this.user = const UserModel.empty(),
    this.newUser = const UserModel.empty(),
  });

  ProfileState copyWith({
    UserModel? user,
    UserModel? newUser,
  }) {
    return ProfileState(
      user: user ?? this.user,
      newUser: newUser ?? this.newUser,
    );
  }
}
