import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

part 'profile_alert_dialog_event.dart';

part 'profile_alert_dialog_state.dart';

class ProfileAlertDialogBloc extends Bloc<ProfileAlertDialogEvent, ProfileAlertDialogState> {
  final UserModel? user;
  final AppRouter _appRouter;

  ProfileAlertDialogBloc({
    required AppRouter appRouter,
    required this.user,
  })  : _appRouter = appRouter,
        super(ProfileAlertDialogState(user: user)) {
    on<CloseEvent>(_onClose);
  }

  Future<void> _onClose(
    CloseEvent event,
    Emitter<ProfileAlertDialogState> emit,
  ) async {
    await _appRouter.maybePop();
  }
}
