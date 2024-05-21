import 'package:core/core.dart';
import 'package:domain/domain.dart';

import '../providers/firebase_auth_provider.dart';
import '../repositories/auth/auth_repository_impl.dart';
import '../repositories/auth/user_data_repository_impl.dart';

final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    _initAuthentication();
    _initUserDataAuthentication();
  }

  void _initAuthentication() {
    appLocator.registerLazySingleton<FirebaseAuthProvider>(FirebaseAuthProvider.new);

    appLocator.registerLazySingleton<AuthRepository>(
      () {
        return AuthRepositoryImpl(
          authApiProvider: appLocator<FirebaseAuthProvider>(),
        );
      },
    );

    appLocator.registerLazySingleton<SignUpUseCase>(
      () {
        return SignUpUseCase(
          authRepository: appLocator<AuthRepository>(),
        );
      },
    );

    appLocator.registerLazySingleton<SignInUseCase>(
      () {
        return SignInUseCase(
          authRepository: appLocator<AuthRepository>(),
        );
      },
    );
  }

  void _initUserDataAuthentication() {
    appLocator.registerLazySingleton<UserDataRepository>(
      UserDataRepositoryImpl.new,
    );

    appLocator.registerLazySingleton<SessionCheckUseCase>(
      () {
        return SessionCheckUseCase(
          userDataRepository: appLocator<UserDataRepository>(),
        );
      },
    );
  }
}
