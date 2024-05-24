import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImages.mainTableSkin.callBackground(
      child: const Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimens.contentPadding26),
            child: UsersWidget(),
          ),
        ],

      ),
    );
  }
}
