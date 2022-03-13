part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class SetTheme extends ThemeEvent {
  final bool isDark;

  SetTheme({required this.isDark});
}
