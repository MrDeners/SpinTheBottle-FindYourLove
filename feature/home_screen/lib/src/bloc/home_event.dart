part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {
  const HomeEvent();
}

class LoadScreenEvent extends HomeEvent {
  const LoadScreenEvent();
}

class NavigateToPlayFieldEvent extends HomeEvent {
  const NavigateToPlayFieldEvent();
}

class NavigateToProfileEvent extends HomeEvent {
  const NavigateToProfileEvent();
}

class NavigateToSettingsEvent extends HomeEvent {
  const NavigateToSettingsEvent();
}