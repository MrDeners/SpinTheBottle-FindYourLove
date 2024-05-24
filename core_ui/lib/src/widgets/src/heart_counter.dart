import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class HeartsCounter extends StatelessWidget {
  final int heartsAmount;
  final bool isWithAmount;

  const HeartsCounter({
    super.key,
    required this.heartsAmount,
    this.isWithAmount = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AppIcons.heartPlus.call(
          size: AppDimens.bigIconSize,
          onTap: () {
            //TODO: Move to donate page
          },
        ),
        isWithAmount
            ? Text(
                heartsAmount.toString(),
                style: AppFonts.primary30,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
