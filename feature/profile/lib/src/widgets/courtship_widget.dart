import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CourtshipWidget extends StatelessWidget {
  final UserModel partner;
  final CourtshipModel courtship;

  const CourtshipWidget({
    required this.partner,
    required this.courtship,
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
                LocaleKeys.profile_courtship.watchTr(context),
                style: AppFonts.primary14,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
                          ),
                          child: partner.avatar.callSquare(),
                        ),
                        Text(
                          partner.firstName,
                          style: AppFonts.primary10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppDimens.contentPadding8),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Text(
                          LocaleKeys.profile_courtshipDuration.watchTr(context),
                          style: AppFonts.primary10,
                        ),
                        Text(
                          '${DateTime.now().difference(courtship.started!).inDays} ${LocaleKeys.general_days.watchTr(context)}',
                          style: AppFonts.primary12,
                        ),
                        const SizedBox(height: AppDimens.contentPadding4),
                        AppIcons.heart.callWith(
                          size: 20,
                          child: Text(
                            courtship.price.toString(),
                            style: AppFonts.primary12,
                          ),
                        ),
                        //TODO: implement BloC logic of Courtship
                        AppButton(
                          isExpanded: false,
                          onTap: () {},
                          padding: const EdgeInsets.symmetric(
                            vertical: AppDimens.contentPadding4,
                            horizontal: AppDimens.contentPadding12,
                          ),
                          backgroundColor: colors.backgroundDarkPrimary,
                          child: Text(
                            LocaleKeys.profile_getCourtship.watchTr(context),
                            style: AppFonts.primary10.copyWith(color: colors.error),
                          ),
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
