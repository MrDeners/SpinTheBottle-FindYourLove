import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/profile_bloc.dart';
import 'profile_screen_content.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (BuildContext context) => ProfileBloc(
        appRouter: appLocator.get<AppRouter>(),
        updateUserDataOnDbUseCase: appLocator.get<UpdateUserDataOnDbUseCase>(),
      ),
      child: const Scaffold(
        body: ProfileContent(),
      ),
    );
  }
}
