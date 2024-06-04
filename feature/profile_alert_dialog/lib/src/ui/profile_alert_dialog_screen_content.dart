import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../bloc/profile_alert_dialog_bloc.dart';
import 'widgets/widgets.dart';

class ProfileAlertDialogContent extends StatelessWidget {
  const ProfileAlertDialogContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileAlertDialogBloc, ProfileAlertDialogState>(
      builder: (BuildContext context, ProfileAlertDialogState state) {
        return Padding(
          padding: const EdgeInsets.all(AppDimens.contentPadding40),
          child: Container(
            decoration: BoxDecoration(
              color: context.theme.colors.background,
              borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppDimens.contentPadding26),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
                          child: state.user?.avatar.callSquare(size: 210),
                        ),
                      ),
                      Text(
                        '${state.user?.firstName} ${state.user?.secondName}, ${state.user?.age}',
                        style: AppFonts.primary18.copyWith(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = context.theme.colors.primaryText,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          AppIcons.heartPlus.call(),
                          Text(
                            state.user!.kissesAmount.ceil().toString(),
                            style: AppFonts.primary18.copyWith(
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = context.theme.colors.primaryText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Column(
                    children: <Widget>[],
                  ),
                  Column(
                    children: <Widget>[
                      AppIcons.close.call(
                        onTap: () => context.read<ProfileAlertDialogBloc>().add(const CloseEvent()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    ;
  }
}
