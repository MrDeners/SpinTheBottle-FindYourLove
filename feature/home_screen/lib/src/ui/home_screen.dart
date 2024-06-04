import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/home_bloc.dart';
import 'home_screen_content.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      lazy: false,
      create: (BuildContext context) => HomeBloc(
        appRouter: appLocator.get<AppRouter>(),
        getUserFromDbByIdUseCase: appLocator.get<GetUserFromDbByIdUseCase>(),
        sessionCheckUseCase: appLocator.get<SessionCheckUseCase>(),
      ),
      child: const Scaffold(
        body: HomeScreenContent(),
      ),
    );
  }
}
