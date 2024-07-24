import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AppRouter _appRouter;
  final UpdateUserDataOnDbUseCase _updateUserDataOnDbUseCase;

  ProfileBloc({
    required AppRouter appRouter,
    required UpdateUserDataOnDbUseCase updateUserDataOnDbUseCase,
  })  : _appRouter = appRouter,
        _updateUserDataOnDbUseCase = updateUserDataOnDbUseCase,
        super(const ProfileState()) {
    on<LoadScreenEvent>(_onLoadScreen);
    on<NavigateBackEvent>(_onNavigateBack);
    on<SaveChangesEvent>(_onSaveChanges);

    add(const LoadScreenEvent());
  }

  Future<void> _onLoadScreen(
    LoadScreenEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final UserModel user = UserModel.fromJson(
      jsonDecode(
        prefs.getString('user')!,
      ),
    );

    emit(
      state.copyWith(
        user: user,
      ),
    );
  }

  Future<void> _onSaveChanges(
    SaveChangesEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await _updateUserDataOnDbUseCase.execute(state.newUser);

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', jsonEncode(state.newUser));
  }

  Future<void> _onNavigateBack(
    NavigateBackEvent event,
    Emitter<ProfileState> emit,
  ) async {
    if (state.user != state.newUser && state.newUser != const UserModel()) {
      add(const SaveChangesEvent());
    }

    await _appRouter.maybePop();
  }
}
