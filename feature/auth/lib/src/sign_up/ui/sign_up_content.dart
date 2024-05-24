import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImages.tableFullScreenBackground.callBackground(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
      child:const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: AppDimens.contentPadding16),
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}
