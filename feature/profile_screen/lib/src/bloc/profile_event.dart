part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {
  const ProfileEvent();
}

class LoadScreenEvent extends ProfileEvent {
  const LoadScreenEvent();
}

class NavigateToPlayFieldEvent extends ProfileEvent {
  const NavigateToPlayFieldEvent();
}

class NavigateToProfileEvent extends ProfileEvent {
  const NavigateToProfileEvent();
}

class NavigateToSettingsEvent extends ProfileEvent {
  const NavigateToSettingsEvent();
}