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
        return Container(
          color: colors.transparent,
          padding: EdgeInsets.only(
            top: AppDimens.contentPadding20,
            bottom: AppDimens.contentPadding20,
            left: AppDimens.contentPadding30,
            right: MediaQuery.of(context).size.width * 0.35,
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
                    const Expanded(child: ProfileUserDataWidget()),
                    const SizedBox(width: AppDimens.contentPadding16),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          AppPassProgressWidget(seasonPass: user.seasonPass),
                          const SizedBox(height: AppDimens.contentPadding12),
                          AppLeagueProgressWidget(league: user.league),
                          const SizedBox(height: AppDimens.contentPadding12),
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
  }
}
