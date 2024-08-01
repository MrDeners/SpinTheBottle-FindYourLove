import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'profile_dialog_event.dart';

part 'profile_dialog_state.dart';

class ProfileDialogBloc extends Bloc<ProfileDialogEvent, ProfileDialogState> {
  final UserModel user;
  final AppRouter _appRouter;

  ProfileDialogBloc({
    required AppRouter appRouter,
    required this.user,
  })  : _appRouter = appRouter,
        super(ProfileDialogState(user: user)) {
    on<CloseEvent>(_onClose);
  }

  Future<void> _onClose(
    CloseEvent event,
    Emitter<ProfileDialogState> emit,
  ) async {
    await _appRouter.maybePop();
  }
}
