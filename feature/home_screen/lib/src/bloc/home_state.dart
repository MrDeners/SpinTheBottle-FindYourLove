part of 'home_bloc.dart';

@immutable
class HomeState {
  final UserModel user;

  const HomeState({
    this.user = const UserModel(),
  });

  HomeState copyWith({
    UserModel? user,
  }) {
    return HomeState(
      user: user ?? this.user,
    );
  }
}
