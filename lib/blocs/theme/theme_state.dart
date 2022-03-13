part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {
  final bool isDark;

  const ThemeState({this.isDark = false});

  ThemeData get themeData;
}

class ThemeInitial extends ThemeState {
  ThemeInitial() : super(isDark: Preferences.darkMode);

  @override
  ThemeData get themeData => isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
}

class SetThemeState extends ThemeState {
  const SetThemeState({required bool isDark}) : super(isDark: isDark);

  @override
  ThemeData get themeData => isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
}
