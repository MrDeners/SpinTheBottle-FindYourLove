import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'table_buttons_widget.dart';
import 'widgets.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImages.mainTableSkin.callBackground(
      child: const SafeArea(
        right: false,
        child: Padding(
          padding: EdgeInsets.only(
              top: AppDimens.contentPadding16,
              bottom: AppDimens.contentPadding16,
              right: AppDimens.contentPadding16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
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
                    Center(child: UsersWidget()),
                    Center(
                      child: RotatingBottleWidget(
                        stopPosition: 0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    TableRightButtonsWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
