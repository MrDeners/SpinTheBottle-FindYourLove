import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../bloc/home_bloc.dart';
import 'widgets/widgets.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AppImages.mainScreenBackground(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: AppDimens.contentPadding16,
                left: AppDimens.contentPadding16,
                right: AppDimens.contentPadding16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  HeartsCounter(
                    heartsAmount: context.watch<HomeBloc>().state.user.heartsAmount,
                  ),
                  AppImages.naming.call(),
                  const SizedBox(
                    width: AppDimens.bigIconSize,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.63,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  AppImages.bottomSheetBackground(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  SafeArea(
                    top: false,
                    child: Container(
                      alignment: Alignment.center,
                      child: const MenuWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
