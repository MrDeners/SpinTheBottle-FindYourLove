import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class SettingContent extends StatefulWidget {
  const SettingContent({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingContent> createState() => _SettingContentState();
}

class _SettingContentState extends State<SettingContent> {
  late bool isEnglishOn;

  @override
  Widget build(BuildContext context) {
    isEnglishOn = Localizations.localeOf(context).languageCode == 'en';

    return AppImages.mainScreenBackground.callBackground(
      fit: BoxFit.cover,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: AppDimens.contentPadding60,
        ),
        child: Row(
          children: <Widget>[
            const Spacer(),
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppDimens.mainBorderRadius),
                  topRight: Radius.circular(AppDimens.mainBorderRadius),
                ),
                child: AppImages.mainTableSkin.callBackground(
                  fit: BoxFit.cover,
                  child: SafeArea(
                    top: false,
                    left: false,
                    right: false,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: AppDimens.contentPadding16,
                        right: AppDimens.contentPadding16,
                        top: AppDimens.contentPadding16,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            LocaleKeys.settingScreen_setting.watchTr(context),
                            style: AppFonts.primary30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                LocaleKeys.settingScreen_language.watchTr(context),
                                style: AppFonts.primary18,
                              ),
                              Switch(
                                activeColor: context.theme.colors.secondaryText,
                                inactiveThumbColor: context.theme.colors.secondaryText,
                                value: isEnglishOn,
                                onChanged: (bool value) {
                                  setState(() {
                                    isEnglishOn = value;
                                  });
                                  isEnglishOn
                                      ? EasyLocalization.of(context)?.setLocale(
                                          const Locale('en', 'US'),
                                        )
                                      : EasyLocalization.of(context)?.setLocale(
                                          const Locale('ru', 'RU'),
                                        );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
