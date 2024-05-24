import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../../bloc/home_bloc.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        AppButton(
          text: LocaleKeys.general_play.watchTr(context),
          isExpanded: false,
          onTap: () {
            context.read<HomeBloc>().add(const NavigateToPlayFieldEvent());
          },
        ),
        AppButton(
          text: LocaleKeys.general_profile.watchTr(context),
          isExpanded: false,
          onTap: () {
            context.read<HomeBloc>().add(const NavigateToProfileEvent());
          },
        ),
        AppButton(
          text: LocaleKeys.general_settings.watchTr(context),
          isExpanded: false,
          onTap: () {
            context.read<HomeBloc>().add(const NavigateToSettingsEvent());
          },
        ),
      ],
    );
  }
}
