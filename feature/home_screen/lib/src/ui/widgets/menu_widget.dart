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
          isExpanded: false,
          onTap: () {
            context.read<HomeBloc>().add(const NavigateToPlayFieldEvent());
          },
          child: Text(
            LocaleKeys.general_play.watchTr(context),
            textScaler: TextScaler.linear(TextScaleUtility.textScaleFactor(context)),
          ),
        ),
        AppButton(
          isExpanded: false,
          onTap: () {
            context.read<HomeBloc>().add(const NavigateToProfileEvent());
          },
          child: Text(
            LocaleKeys.general_profile.watchTr(context),
            textScaler: TextScaler.linear(TextScaleUtility.textScaleFactor(context)),
          ),
        ),
        AppButton(
          isExpanded: false,
          onTap: () {
            context.read<HomeBloc>().add(const NavigateToSettingsEvent());
          },
          child: Text(
            LocaleKeys.general_settings.watchTr(context),
            textScaler: TextScaler.linear(TextScaleUtility.textScaleFactor(context)),
          ),
        ),
      ],
    );
  }
}
