import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class TableUserWidget extends StatelessWidget {
  final UserModel? user;
  final Function(UserModel, BuildContext) onTap;

  const TableUserWidget({
    super.key,
    required this.user,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => user != null ? onTap(user!, context) : (),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              user!.border.callSquare(),
              Transform.translate(
                offset: const Offset(0, 1),
                child: user!.avatar.callSquare(),
              ),
            ],
          ),
          Text(
            '${user?.firstName}${user?.age != null ? ", ${user?.age}" : ''}',
            style: AppFonts.secondary12Regular,
          ),
        ],
      ),
    );
  }
}
