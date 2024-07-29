part of 'play_field_bloc.dart';

@immutable
class PlayFieldState {
  final List<UserModel?> users;
  final TableModel table;
  final UserModel currentUser;
  final Stream<dynamic>? webSocketStream;

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
    this.currentUser = const UserModel(),
    this.table = const TableModel(),
    this.webSocketStream,
  });

  PlayFieldState copyWith({
    List<UserModel?>? users,
    UserModel? currentUser,
    Stream<dynamic>? webSocketStream,
  }) {
    return PlayFieldState(
      users: users ?? this.users,
      currentUser: currentUser ?? this.currentUser,
      webSocketStream: webSocketStream ?? this.webSocketStream,
    );
  }
}
