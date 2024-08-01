import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/profile_dialog_bloc.dart';
import 'profile_dialog_screen_content.dart';

@RoutePage()
class ProfileDialogScreen extends StatelessWidget {
  final UserModel user;

  const ProfileDialogScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileDialogBloc>(
      create: (BuildContext context) {
        return ProfileDialogBloc(
          appRouter: appLocator.get<AppRouter>(),
          user: user,
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: GestureDetector(
          onTap: () => context.maybePop(),
          child: const ProfileDialogContent(),
        ),
      ),
    );
  }
}
