import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class TableUserWidget extends StatelessWidget {
  final UserModel? user;

  const TableUserWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (BuildContext context) => ProfileAlertDialogScreen(user: user),
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              user!.border.callSquare(size: MediaQuery.of(context).size.width * 0.07),
              Transform.translate(
                offset: Offset(0, MediaQuery.of(context).size.height * 0.005),
                child: user!.avatar.callSquare(size: MediaQuery.of(context).size.width * 0.07),
              ),
            ],
          ),
          Text(
            '${user?.firstName}, ${user?.age}',
            style: AppFonts.secondary12Regular,
          ),
        ],
      ),
    );
  }
}
