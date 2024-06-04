import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

part 'play_field_event.dart';

part 'play_field_state.dart';

class PlayFieldBloc extends Bloc<PlayFieldEvent, PlayFieldState> {
  final AppRouter _appRouter;
  final GetUsersOnTableUseCase _getUsersOnTableUseCase;
  final GetUserFromDbByIdUseCase _getUserFromDbByIdUseCase;
  final SessionCheckUseCase _sessionCheckUseCase;

  PlayFieldBloc({
    required AppRouter appRouter,
    required GetUsersOnTableUseCase getUsersOnTableUseCase,
    required GetUserFromDbByIdUseCase getUserFromDbByIdUseCase,
    required SessionCheckUseCase sessionCheckUseCase,
  })  : _appRouter = appRouter,
        _getUsersOnTableUseCase = getUsersOnTableUseCase,
        _getUserFromDbByIdUseCase = getUserFromDbByIdUseCase,
        _sessionCheckUseCase = sessionCheckUseCase,
        super(const PlayFieldState()) {
    on<UpdateTablePlayersEvent>(_onUpdateTablePlayers);
    on<EnterToPlayFieldEvent>(_onEnterToPlayField);
    on<NavigateBackEvent>(_onNavigateBack);

    add(const EnterToPlayFieldEvent());
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

  Future<void> _onEnterToPlayField(
    EnterToPlayFieldEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    emit(
      state.copyWith(
        currentUser: UserModel.fromJson(
          jsonDecode(
            prefs.getString('user')!,
          ),
        ),
      ),
    );
    add(const UpdateTablePlayersEvent());
  }

  Future<void> _onNavigateBack(
    NavigateBackEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    await _appRouter.maybePop();
  }
}
