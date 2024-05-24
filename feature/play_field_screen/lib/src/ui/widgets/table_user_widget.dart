import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TableUserWidget extends StatelessWidget {
  final UserModel? user;

  static const double xBorderOffset = 1.0;
  static const double yBorderOffset = 3.5;

  const TableUserWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            user!.border.callSquare(size: AppDimens.userTableCardBorderSize),
            Transform.translate(
              offset: const Offset(xBorderOffset, yBorderOffset),
              child: user!.avatar.callSquare(size: AppDimens.userTableCardSize),
            ),
          ],
        ),
        Text(
          '${user?.firstName} ${user?.secondName}, ${user?.age}',
          style: AppFonts.secondary12Regular,
        ),
      ],
    );
  }
}
