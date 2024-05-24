import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

part 'play_field_event.dart';

part 'play_field_state.dart';

class PlayFieldBloc extends Bloc<PlayFieldEvent, PlayFieldState> {
  final AppRouter _appRouter;
  final GetUsersOnTableUseCase _getUsersOnTableUseCase;

  PlayFieldBloc({
    required AppRouter appRouter,
    required GetUsersOnTableUseCase getUsersOnTableUseCase,
  })  : _appRouter = appRouter,
        _getUsersOnTableUseCase = getUsersOnTableUseCase,
        super(const PlayFieldState()) {
    on<UpdateTablePlayersEvent>(_onUpdateTablePlayers);

    add(const UpdateTablePlayersEvent());
  }

  Future<void> _onUpdateTablePlayers(
    UpdateTablePlayersEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    emit(
      state.copyWith(
        users: await _getUsersOnTableUseCase.execute(),
      ),
    );
  }
}
