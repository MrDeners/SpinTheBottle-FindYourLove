part of 'splash_bloc.dart';

@immutable
sealed class SplashEvent {
  const SplashEvent();
}

class NavigateLogInEvent extends SplashEvent {
  const NavigateLogInEvent();
}

class NavigateHomeEvent extends SplashEvent {
  const NavigateHomeEvent();
}

class SessionCheckEvent extends SplashEvent {
  const SessionCheckEvent();
}
