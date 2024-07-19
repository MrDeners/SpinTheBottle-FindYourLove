import 'dart:math';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/models/user/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../bloc/play_field_bloc.dart';

class RotatingBottleWidget extends StatefulWidget {
  const RotatingBottleWidget({
    super.key,
  });

  @override
  State<RotatingBottleWidget> createState() => _RotatingBottleWidgetState();
}

class _RotatingBottleWidgetState extends State<RotatingBottleWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;

  final Map<int, List<double>> usersIntervals = const <int, List<double>>{
    // TODO: check is it's correct
    0: <double>[0.0000, 0.0833],
    4: <double>[0.0834, 0.1667],
    6: <double>[0.1668, 0.2501],
    8: <double>[0.2502, 0.3335],
    11: <double>[0.3336, 0.4169],
    7: <double>[0.4170, 0.5003],
    10: <double>[0.5004, 0.5837],
    9: <double>[0.5838, 0.6671],
    5: <double>[0.6672, 0.7505],
    1: <double>[0.7506, 0.8339],
    3: <double>[0.8340, 0.9174],
    2: <double>[0.9175, 0.0000],
  };

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 9),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 9,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: AppIcons.mainBottleSkin(
        onTap: () {
          if (_controller.status == AnimationStatus.completed ||
              _controller.status == AnimationStatus.dismissed) {
            _controller.reset();
          }
          setState(() {
            _animation = Tween<double>(
              begin: 0.0,
              end: 9 +
                  getRandomPosition(
                    usersIntervals[getRandomUser(
                      context
                          .read<PlayFieldBloc>()
                          .state
                          .users
                          .where((UserModel? element) => element != null)
                          .length,
                    )]!,
                  ),
            ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
          });
          _controller.forward();
        },
      ),
    );
  }

  double getRandomPosition(List<double> limits) {
    return (Random().nextDouble() * (limits[1] - limits[0]) + limits[0]) <= 1
        ? Random().nextDouble() * (limits[1] - limits[0]) + limits[0]
        : (Random().nextDouble() * (limits[1] - limits[0]) + limits[0]) - 1;
  }

  int getRandomUser(int amountUsers) {
    return Random().nextInt(amountUsers);
  }
}
