part of 'play_field_bloc.dart';

@immutable
class PlayFieldState {
  final List<UserModel?> users;
  final TableModel table;
  final UserModel currentUser;
  final WebSocketChannel? webSocketChannel;

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
    this.webSocketChannel,
  });

  PlayFieldState copyWith({
    List<UserModel?>? users,
    UserModel? currentUser,
    WebSocketChannel? webSocketChannel,
  }) {
    return PlayFieldState(
      users: users ?? this.users,
      currentUser: currentUser ?? this.currentUser,
      webSocketChannel: webSocketChannel ?? this.webSocketChannel,
    );
  }
}
