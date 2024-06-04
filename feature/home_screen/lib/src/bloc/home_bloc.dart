import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AppRouter _appRouter;
  final GetUserFromDbByIdUseCase _getUserFromDbByIdUseCase;
  final SessionCheckUseCase _sessionCheckUseCase;

  HomeBloc({
    required AppRouter appRouter,
    required GetUserFromDbByIdUseCase getUserFromDbByIdUseCase,
    required SessionCheckUseCase sessionCheckUseCase,
  })  : _appRouter = appRouter,
        _getUserFromDbByIdUseCase = getUserFromDbByIdUseCase,
        _sessionCheckUseCase = sessionCheckUseCase,
        super(const HomeState()) {
    on<LoadScreenEvent>(_onLoadScreen);
    on<NavigateToPlayFieldEvent>(_onNavigateToPlayField);
    on<NavigateToProfileEvent>(_onNavigateToProfile);
    on<NavigateToSettingsEvent>(_onNavigateToSettings);

    add(const LoadScreenEvent());
  }

  Future<void> _onLoadScreen(
    LoadScreenEvent event,
    Emitter<HomeState> emit,
  ) async {
    final UserModel user =
        await _getUserFromDbByIdUseCase.execute(_sessionCheckUseCase.execute()!.uid);
    // TODO: use EncryptSharedPreferences
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'user',
      jsonEncode(user),
    );
    emit(
      state.copyWith(
        user: user,
      ),
    );
  }

  Future<void> _onNavigateToPlayField(
    NavigateToPlayFieldEvent event,
    Emitter<HomeState> emit,
  ) async {
    await _appRouter.push(const PlayFieldRoute());
  }

  Future<void> _onNavigateToProfile(
    NavigateToProfileEvent event,
    Emitter<HomeState> emit,
  ) async {
    await _appRouter.push(ProfileAlertDialogRoute(user: state.user));
  }

  Future<void> _onNavigateToSettings(
    NavigateToSettingsEvent event,
    Emitter<HomeState> emit,
  ) async {
    await _appRouter.push(const SettingRoute());
  }
}
