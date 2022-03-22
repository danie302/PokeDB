import 'package:flutter/material.dart';

import 'package:pokedb/models/models.dart';
import 'package:pokedb/screens/screens.dart';

class AppRoutes {
  static final initialRoute = LoginScreen.routeName;

  static final routesList = <RouteScreen>[
    RouteScreen(
      routeName: LoginScreen.routeName,
      screen: const LoginScreen(),
    ),
    RouteScreen(
      routeName: RegisterScreen.routeName,
      screen: const RegisterScreen(),
    ),
    RouteScreen(
      routeName: ForgotPasswordScreen.routeName,
      screen: const ForgotPasswordScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final route in routesList) {
      appRoutes.addAll({
        route.routeName: (BuildContext context) => route.screen,
      });
    }

    return appRoutes;
  }
}
