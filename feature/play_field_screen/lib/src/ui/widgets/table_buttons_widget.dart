import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/models/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:profile_alert_dialog/src/ui/profile_alert_dialog_screen.dart';

import '../../bloc/play_field_bloc.dart';

class TableLeftButtonsWidget extends StatelessWidget {
  const TableLeftButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AppIcons.door(
            size: AppDimens.smallIconSize,
            onTap: () => context.read<PlayFieldBloc>().add(const NavigateBackEvent()),
          ),
          HeartsCounter(
            heartsAmount: context.watch<PlayFieldBloc>().state.currentUser.heartsAmount,
          ),
          Column(
            children: <Widget>[
              AppIcons.update(size: AppDimens.smallIconSize),
              Text(
                '${LocaleKeys.playFieldScreen_table.watchTr(context)} \n ${context.read<PlayFieldBloc>().state.table.id}',
                style: AppFonts.secondary12Regular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TableRightButtonsWidget extends StatelessWidget {
  const TableRightButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserModel user = context.watch<PlayFieldBloc>().state.currentUser;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AppIcons.primaryUserProfile(
            size: AppDimens.mediumIconSize,
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => ProfileAlertDialogScreen(
                user: user,
              ),
            ),
          ),
          AppIcons.music(size: AppDimens.mediumIconSize),
        ],
      ),
    );
  }
}
