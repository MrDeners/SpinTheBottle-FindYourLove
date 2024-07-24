import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

import '../../../constants/auth_constants.dart';
import '../../../validators/auth_validator.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AppRouter _appRouter;
  final SignUpUseCase _signUpUseCase;
  final WriteUserToDbUseCase _writeUserToDbUseCase;

  SignUpBloc({
    required AppRouter appRouter,
    required SignUpUseCase signUpUseCase,
    required WriteUserToDbUseCase writeUserToDbUseCase,
  })  : _appRouter = appRouter,
        _signUpUseCase = signUpUseCase,
        _writeUserToDbUseCase = writeUserToDbUseCase,
        super(const SignUpState()) {
    on<NavigateBackEvent>(_onNavigateBack);
    on<SignUp>(_onSignUp);
  }

  Future<void> _onNavigateBack(
    NavigateBackEvent event,
    Emitter<SignUpState> emit,
  ) async {
    await _appRouter.maybePop();
  }

  Future<void> _onSignUp(
    SignUp event,
    Emitter<SignUpState> emit,
  ) async {
    emit(
      state.copyWith(
        name: event.name,
        email: event.email,
        password: event.password,
        confirmPassword: event.confirmPassword,
        validationErrors: <String, String?>{
          AuthConstants.nameError: AuthValidator.nameValidator(value: event.name),
          AuthConstants.emailError: AuthValidator.emailValidator(value: event.email),
          AuthConstants.passwordError: AuthValidator.passwordValidator(value: event.password),
          AuthConstants.confirmPasswordError: AuthValidator.confirmPasswordValidator(
            password: event.password,
            confirmPassword: event.confirmPassword,
          ),
        },
      ),
    );

    if (state.validationErrors.values.every((String? value) => value == null)) {
      try {
        await _signUpUseCase.execute(
          SignUpUserModel(
            name: state.name,
            login: state.email,
            password: state.password,
          ),
        );
        await _writeUserToDbUseCase.execute(
          UserModel(
            id: FirebaseAuth.instance.currentUser!.uid,
            firstName: state.name,
          ),
        );
        await _appRouter.replaceAll(<PageRouteInfo>[const HomeRoute()]);
        emit(
          state.copyWith(
            toast: ToastModel(message: LocaleKeys.authScreen_logIn.tr(), type: ToastType.success),
          ),
        );
      } on AppException catch (error) {
        emit(
          state.copyWith(
            toast: ToastModel(message: error.message, type: ToastType.error),
          ),
        );
      }
    }
  }
}
