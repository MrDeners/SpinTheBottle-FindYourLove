import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/profile_alert_dialog_bloc.dart';
import 'profile_alert_dialog_screen_content.dart';

@RoutePage()
class ProfileAlertDialogScreen extends StatelessWidget {
  final UserModel? user;

  const ProfileAlertDialogScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileAlertDialogBloc>(
      create: (BuildContext context) {
        return ProfileAlertDialogBloc(
          appRouter: appLocator.get<AppRouter>(),
          user: user,
        );
      },
      // TODO: remove Scaffold when I create a ProfileScreen
      child:  Scaffold(
        backgroundColor: context.theme.colors.transparent,
        body: const ProfileAlertDialogContent(),
      ),
    );
  }
}
