part of 'profile_dialog_bloc.dart';

@immutable
abstract class ProfileDialogEvent {
  const ProfileDialogEvent();
}

class CloseEvent extends ProfileDialogEvent {
  const CloseEvent();
}
