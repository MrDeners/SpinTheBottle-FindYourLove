import 'package:flutter/cupertino.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: context.theme.colors.accent.withOpacity(0.5),
                blurRadius: 50,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: AppIcons.heartPlus.call(
            size: AppDimens.mediumIconSize,
            onTap: () {
              //TODO: Move to donate page
            },
          ),
        ),
        isWithAmount
            ? Text(
                heartsAmount.toString(),
                style: AppFonts.primary16,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
