import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppLeagueProgressWidget extends StatelessWidget {
  final LeagueUserModel league;

  const AppLeagueProgressWidget({
    required this.league,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.theme.colors;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colors.border,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius - 2),
        child: AppImages.mainTableSkin.callBackground(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.contentPadding20,
            vertical: AppDimens.contentPadding8,
          ),
          child: Column(
            children: <Widget>[
              Text(
                '${league.leagueLevel.name} ${LocaleKeys.league_leagueTitle.watchTr(context)}',
                style: AppFonts.primary12,
              ),
              Row(
                children: <Widget>[
                  //league.leagueLevel.icon.call(),
                  //TODO: change when league icons are added
                  AppIcons.vkLogo.call(size: AppDimens.mediumIconSize),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            AppIcons.heartPlus.callWith(
                              child: Text(
                                league.score.toString(),
                                style: AppFonts.primary12,
                              ),
                              size: AppDimens.smallIconSize,
                            ),
                            Text(
                              '#${league.position}',
                              style: AppFonts.primary12,
                            ),
                          ],
                        ),
                        const SizedBox(height: AppDimens.contentPadding4),
                        Text(
                          DateTimeUtility.formatTimeLeft(league.timeLeft),
                          style: AppFonts.primary12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
