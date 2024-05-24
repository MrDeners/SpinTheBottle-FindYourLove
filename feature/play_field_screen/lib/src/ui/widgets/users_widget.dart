import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../bloc/play_field_bloc.dart';
import 'table_user_widget.dart';

class UsersWidget extends StatelessWidget {
  const UsersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<UserModel?> users = context
        .read<PlayFieldBloc>()
        .state
        .users;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            users[2] != null
                ? TableUserWidget(user: users[2])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
            users[0] != null
                ? TableUserWidget(user: users[0])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
            users[4] != null
                ? TableUserWidget(user: users[4])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            users[8] != null
                ? TableUserWidget(user: users[8])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
            users[11] != null
                ? TableUserWidget(user: users[11])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            users[6] != null
                ? TableUserWidget(user: users[6])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
            users[7] != null
                ? TableUserWidget(user: users[7])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            users[10] != null
                ? TableUserWidget(user: users[10])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
            users[9] != null
                ? TableUserWidget(user: users[9])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            users[5] != null
                ? TableUserWidget(user: users[5])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
            users[1] != null
                ? TableUserWidget(user: users[1])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
            users[3] != null
                ? TableUserWidget(user: users[3])
                : const SizedBox(width: AppDimens.userTableCardSize, height: AppDimens.userTableCardSize,),
          ],
        ),
      ],
    );
  }
}
