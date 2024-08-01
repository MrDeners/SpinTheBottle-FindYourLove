import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../bloc/play_field_bloc.dart';
import 'table_user_widget.dart';

class UsersWidget extends StatelessWidget {
  final Function(UserModel, BuildContext) onUserTap;
  const UsersWidget({
    required this.onUserTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<UserModel?> users = context.watch<PlayFieldBloc>().state.users;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            users[2] != null
                ? TableUserWidget(user: users[2], onTap: onUserTap)
                : const SizedBox(
                    width: AppDimens.userTableCardSize,
                    height: AppDimens.userTableCardSize,
                  ),
            Transform.translate(
              offset: const Offset(0, -AppDimens.contentPadding16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppDimens.contentPadding26),
                child: users[0] != null
                    ? TableUserWidget(user: users[0], onTap: onUserTap)
                    : const SizedBox(
                        width: AppDimens.userTableCardSize,
                        height: AppDimens.userTableCardSize,
                      ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -AppDimens.contentPadding16),
              child: users[4] != null
                  ? TableUserWidget(user: users[4], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppDimens.contentPadding26),
              child: users[6] != null
                  ? TableUserWidget(user: users[6], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.contentPadding40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              users[8] != null
                  ? TableUserWidget(user: users[8], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
              users[11] != null
                  ? TableUserWidget(user: users[11], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.contentPadding40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              users[10] != null
                  ? TableUserWidget(user: users[10], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
              users[9] != null
                  ? TableUserWidget(user: users[9], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            users[5] != null
                ? TableUserWidget(user: users[5], onTap: onUserTap)
                : const SizedBox(
                    width: AppDimens.userTableCardSize,
                    height: AppDimens.userTableCardSize,
                  ),
            Transform.translate(
              offset: const Offset(0, AppDimens.contentPadding16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppDimens.contentPadding26),
                child: users[1] != null
                    ? TableUserWidget(user: users[1], onTap: onUserTap)
                    : const SizedBox(
                        width: AppDimens.userTableCardSize,
                        height: AppDimens.userTableCardSize,
                      ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, AppDimens.contentPadding16),
              child: users[3] != null
                  ? TableUserWidget(user: users[3], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppDimens.contentPadding26),
              child: users[7] != null
                  ? TableUserWidget(user: users[7], onTap: onUserTap)
                  : const SizedBox(
                      width: AppDimens.userTableCardSize,
                      height: AppDimens.userTableCardSize,
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
