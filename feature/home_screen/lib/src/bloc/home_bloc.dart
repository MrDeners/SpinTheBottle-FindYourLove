import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AppRouter _appRouter;

  HomeBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(const HomeState()) {
    on<LoadScreenEvent>(_onLoadScreen);
    on<NavigateToPlayFieldEvent>(_onNavigateToPlayField);
    on<NavigateToProfileEvent>(_onNavigateToProfile);
    on<NavigateToSettingsEvent>(_onNavigateToSettings);}

  Future<void> _onLoadScreen(
      LoadScreenEvent event,
      Emitter<HomeState> emit,
      ) async {
    //final UserModel user = await ;
    // TODO : Get data from BD
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
    // await appLocator.get<AppRouter>().push(ProfileRoute());
  }

  Future<void> _onNavigateToSettings(
      NavigateToSettingsEvent event,
      Emitter<HomeState> emit,
      ) async {
    // await appLocator.get<AppRouter>().push(SettingsRoute());
  }
}
