import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/widgets.dart';

class PlayFieldContent extends StatelessWidget {
  const PlayFieldContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppImages.playFieldScreenBackground.callBackground(
      child: const Row(
        children: <Widget>[
          Expanded(
            flex: 136,
            child: TableWidget(),
          ),
          Spacer(),
          Expanded(
            flex: 63,
            child: ChatWidget(),
          ),
        ],
      ),
    );
  }
}
