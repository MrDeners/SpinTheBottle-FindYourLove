import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/models/user/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/courtship_widget.dart';
import '../bloc/profile_dialog_bloc.dart';
import 'widgets/widgets.dart';

class ProfileDialogContent extends StatelessWidget {
  const ProfileDialogContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel user = context.read<ProfileDialogBloc>().state.user;
    final AppColorsTheme colors = context.theme.colors;

    return BlocBuilder<ProfileDialogBloc, ProfileDialogState>(
      builder: (BuildContext context, ProfileDialogState state) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              color: colors.transparent,
              padding: const EdgeInsets.only(
                top: AppDimens.contentPadding30,
                bottom: AppDimens.contentPadding30,
                left: AppDimens.contentPadding100,
                right: AppDimens.contentPadding100,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: colors.background,
                    border: Border.all(
                      color: colors.border,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppDimens.contentPadding16),
                    child: Row(
                      children: <Widget>[
                        const Expanded(
                          child: ProfileUserDataWidget(),
                        ),
                        const SizedBox(width: AppDimens.contentPadding16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              AppPassProgressWidget(seasonPass: user.seasonPass),
                              AppLeagueProgressWidget(league: user.league),
                              //TODO: Get partner by user.courtship.partnerId from DB
                              CourtshipWidget(
                                partner: user,
                                courtship: user.courtship,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
