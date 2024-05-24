part of 'play_field_bloc.dart';

@immutable
class PlayFieldState {
  final List<UserModel?> users;

  const PlayFieldState({
    this.users = const <UserModel?>[
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
    ],
  });

  PlayFieldState copyWith({
    List<UserModel?>? users,
  }) {
    return PlayFieldState(
      users: users ?? this.users,
    );
  }
}
