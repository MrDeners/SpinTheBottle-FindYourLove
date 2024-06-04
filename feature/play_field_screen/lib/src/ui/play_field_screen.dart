import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/play_field_bloc.dart';
import 'play_field_content.dart';

@RoutePage()
class PlayFieldScreen extends StatelessWidget {
  const PlayFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlayFieldBloc>(
      lazy: false,
      create: (BuildContext context) => PlayFieldBloc(
        appRouter: appLocator.get<AppRouter>(),
        getUsersOnTableUseCase: appLocator.get<GetUsersOnTableUseCase>(),
      ),
      child: Scaffold(
        body: BlocBuilder<PlayFieldBloc, PlayFieldState>(
          builder: (BuildContext context, PlayFieldState state) {
            return const PlayFieldContent();
          },
        ),
      ),
    );
  }
}
