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
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: AppDimens.contentPadding8),
          ),
          AppImages.naming.call(),
          AppImages.bottomSheetBackground.callBackground(
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              top: false,
              child: Container(
                alignment: Alignment.center,
                child: const SignInForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
