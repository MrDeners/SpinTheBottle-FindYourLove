import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/widgets.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImages.mainScreenBackground.callBackground(
      fit: BoxFit.cover,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(height: AppDimens.contentPadding8),
          AppImages.naming.call(),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppDimens.mainBorderRadius),
              ),
              child: AppImages.mainTableSkin.callBackground(
                child: const SignInForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
