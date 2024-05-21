import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../bloc/splash_bloc.dart';

class SplashForm extends StatelessWidget {
  const SplashForm({super.key});

  @override
  Widget build(BuildContext context) {
    final User? currentUser = FirebaseAuth.instance.currentUser;

    currentUser == null
        ? context.read<SplashBloc>().add(const NavigateLogInEvent())
        : context.read<SplashBloc>().add(const NavigateHomeEvent());
    return const AppGradientWrapper(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:AppDimens.contentPadding16),
          child: SizedBox.shrink(),
        ),
      ),
    );
  }
}
