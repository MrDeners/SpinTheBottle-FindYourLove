part of 'play_field_bloc.dart';

@immutable
class PlayFieldState {
  final List<UserModel?> users;
  final TableModel table;
  final UserModel currentUser;

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
    this.currentUser = const UserModel.empty(),
    this.table = const TableModel.empty(),
  });

  PlayFieldState copyWith({
    List<UserModel?>? users,
    UserModel? currentUser,
  }) {
    return PlayFieldState(
      users: users ?? this.users,
      currentUser: currentUser ?? this.currentUser,
    );
  }
}
