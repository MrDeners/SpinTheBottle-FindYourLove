import 'package:core_ui/core_ui.dart';
import 'package:domain/models/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'table_buttons_widget.dart';
import 'widgets.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImages.mainTableSkin.callBackground(
      child: SafeArea(
        right: false,
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppDimens.contentPadding16,
            bottom: AppDimens.contentPadding16,
            right: AppDimens.contentPadding16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Expanded(
                child: Column(
                  children: <Widget>[
                    TableLeftButtonsWidget(),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: UsersWidget(
                        onUserTap: showUserProfile,
                      ),
                    ),
                    const Center(
                      child: RotatingBottleWidget(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    TableRightButtonsWidget(onTap: showUserProfile),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showUserProfile(UserModel user, BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: (BuildContext context) => ProfileDialogScreen(user: user),
    );
  }
}
