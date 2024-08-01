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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
            ),
            //child: user.avatar.callSquare(),
            child: CachedNetworkImage(
              imageUrl: 'https://pixlr.com/images/generator/text-to-image.webp',
            ),
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
        AppIcons.kiss.callWith(
          size: 20,
          child: Text(
            user.kissesAmount.ceil().toString(),
            style: AppFonts.primary14.copyWith(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = context.theme.colors.primaryText,
            ),
          ),
        ),
        const SizedBox(height: AppDimens.contentPadding4),
        if (!user.isLinksEmpty)
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                if (user.links['vk'] != null) AppIcons.vkLogo.call(),
                if (user.links['telegram'] != null) AppIcons.telegramLogo.call(),
                if (user.links['instagram'] != null) AppIcons.instagramLogo.call(),
                if (user.links['ok'] != null) AppIcons.okLogo.call(),
              ],
            ),
          ),
      ],
    );
  }
}
