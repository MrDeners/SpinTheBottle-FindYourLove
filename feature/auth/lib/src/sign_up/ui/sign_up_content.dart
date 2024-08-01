import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImages.tableFullScreenBackground.callBackground(
      fit: BoxFit.cover,
      child: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(AppDimens.contentPadding26),
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}
