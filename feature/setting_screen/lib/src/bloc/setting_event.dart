part of 'setting_bloc.dart';

@immutable
abstract class SettingEvent {
  const SettingEvent();
}

class ChangeLocaleEvent extends SettingEvent {
  const ChangeLocaleEvent();
}

class NavigateBackEvent extends SettingEvent {
  const NavigateBackEvent();
}
