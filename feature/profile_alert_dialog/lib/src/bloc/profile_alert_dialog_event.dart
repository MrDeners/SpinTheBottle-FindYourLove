part of 'profile_alert_dialog_bloc.dart';

@immutable
abstract class ProfileAlertDialogEvent {
  const ProfileAlertDialogEvent();
}

class CloseEvent extends ProfileAlertDialogEvent {
  const CloseEvent();
}
