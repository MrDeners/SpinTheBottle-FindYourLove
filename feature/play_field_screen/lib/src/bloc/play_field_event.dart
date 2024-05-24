part of 'play_field_bloc.dart';

@immutable
abstract class PlayFieldEvent {
  const PlayFieldEvent();
}

class UpdateTablePlayersEvent extends PlayFieldEvent {
  const UpdateTablePlayersEvent();
}
