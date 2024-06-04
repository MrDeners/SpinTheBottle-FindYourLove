import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AppRouter _appRouter;

  ProfileBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(const ProfileState()) {
    on<LoadScreenEvent>(_onLoadScreen);
    on<NavigateToPlayFieldEvent>(_onNavigateToPlayField);
    on<NavigateToProfileEvent>(_onNavigateToProfile);
    on<NavigateToSettingsEvent>(_onNavigateToSettings);

  }

  Future<void> _onLoadScreen(
      LoadScreenEvent event,
      Emitter<ProfileState> emit,
      ) async {
    //final UserModel user = await ;
    // TODO : Get data from BD
  }

  Future<void> _onNavigateToPlayField(
      NavigateToPlayFieldEvent event,
      Emitter<ProfileState> emit,
      ) async {
    await _appRouter.push(const PlayFieldRoute());
  }

  Future<void> _onNavigateToProfile(
      NavigateToProfileEvent event,
      Emitter<ProfileState> emit,
      ) async {
    // await appLocator.get<AppRouter>().push(ProfileRoute());
  }

  Future<void> _onNavigateToSettings(
      NavigateToSettingsEvent event,
      Emitter<ProfileState> emit,
      ) async {
    // await appLocator.get<AppRouter>().push(SettingsRoute());
  }
}
