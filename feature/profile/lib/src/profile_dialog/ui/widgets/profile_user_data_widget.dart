import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/models/user/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../bloc/profile_dialog_bloc.dart';

class ProfileUserDataWidget extends StatelessWidget {
  const ProfileUserDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel user = context.read<ProfileDialogBloc>().state.user;

    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
            ),
            //child: user.avatar.callSquare(),
            child: CachedNetworkImage(imageUrl: 'https://pixlr.com/images/generator/text-to-image.webp', fit: BoxFit.fitWidth,),
          ),
        ),
        Text(
          '${user.firstName} ${user.secondName ?? ''}${user.age != null ? ", ${user.age}" : ''}',
          style: AppFonts.primary14.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1
              ..color = context.theme.colors.primaryText,
          ),
        ),
        Row(
          children: <Widget>[
            AppIcons.kiss.callWith(
              size: AppDimens.smallIconSize,
              child: Text(
                user.kissesAmount.ceil().toString(),
                style: AppFonts.primary18.copyWith(
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = context.theme.colors.primaryText,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AppIcons.vkLogo.call(size: 30),
            AppIcons.telegramLogo.call(size: 30),
            AppIcons.instagramLogo.call(size: 30),
            AppIcons.okLogo.call(size: 30),
          ],
        ),
      ],
    );
  }
}
