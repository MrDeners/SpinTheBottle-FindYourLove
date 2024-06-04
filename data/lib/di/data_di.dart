import 'package:core/core.dart';
import 'package:domain/domain.dart';

import '../providers/api_provider.dart';
import '../providers/firebase_auth_provider.dart';
import '../providers/firebase_db_provider.dart';
import '../repositories/api/api_repository_impl.dart';
import '../repositories/auth/auth_repository_impl.dart';
import '../repositories/auth/user_data_repository_impl.dart';
import '../repositories/db/db_repository_impl.dart';

final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    _initAuthenticationDependencies();
    _initUserDataDependencies();
    _initApiDependencies();
    _initDbServiceDependencies();
  }

  void _initAuthenticationDependencies() {
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

  void _initUserDataDependencies() {
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

  void _initApiDependencies() {
    appLocator.registerLazySingleton<ApiProvider>(ApiProvider.new);

    appLocator.registerLazySingleton<ApiRepository>(
      () {
        return ApiRepositoryImpl(
          apiProvider: appLocator<ApiProvider>(),
        );
      },
    );

    appLocator.registerLazySingleton<GetUsersOnTableUseCase>(
      () {
        return GetUsersOnTableUseCase(
          apiRepository: appLocator<ApiRepository>(),
        );
      },
    );
  }

  void _initDbServiceDependencies() {
    appLocator.registerLazySingleton<FirebaseDbProvider>(FirebaseDbProvider.new);

    appLocator.registerLazySingleton<DbRepository>(() {
      return DbRepositoryImpl(
        dbProvider: appLocator<FirebaseDbProvider>(),
      );
    });

    appLocator.registerLazySingleton<GetUserFromDbByIdUseCase>(
      () {
        return GetUserFromDbByIdUseCase(
          dbRepository: appLocator<DbRepository>(),
        );
      },
    );

    appLocator.registerLazySingleton<WriteUserToDbUseCase>(
      () {
        return WriteUserToDbUseCase(
          dbRepository: appLocator<DbRepository>(),
        );
      },
    );
  }
}
