import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

part 'setting_event.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final AppRouter _appRouter;

  SettingBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(const SettingState()) {
    on<ChangeLocaleEvent>(_onChangeLocale);
  }

  Future<void> _onChangeLocale(
    ChangeLocaleEvent event,
    Emitter<SettingState> emit,
  ) async {
  }
}
