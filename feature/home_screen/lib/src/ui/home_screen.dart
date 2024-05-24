import 'package:core/core.dart';
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
      create: (BuildContext context) => HomeBloc(
        appRouter: appLocator.get<AppRouter>(),
      ),
      child: const Scaffold(
        body: SignInContent(),
      ),
    );
  }
}
