import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:pokedb/preferences.dart';
import 'package:pokedb/themes/theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<SetTheme>((event, emit) {
      emit(SetThemeState(isDark: event.isDark));
    });
  }
}
