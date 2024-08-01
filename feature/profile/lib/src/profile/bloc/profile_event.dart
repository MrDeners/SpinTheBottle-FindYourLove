part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {
  const ProfileEvent();
}

class LoadScreenEvent extends ProfileEvent {
  const LoadScreenEvent();
}

class NavigateBackEvent extends ProfileEvent {
  const NavigateBackEvent();
}

class SaveChangesEvent extends ProfileEvent {
  const SaveChangesEvent();
}
