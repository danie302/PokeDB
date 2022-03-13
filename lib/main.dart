import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pokedb/locator.dart';
import 'package:pokedb/blocs/blocs.dart';
import 'package:pokedb/preferences.dart';
import 'package:pokedb/routes/navigator.dart';
import 'package:pokedb/routes/routes.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  await Preferences.init();
  setupLocator();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: const PokeDb(),
    ),
  );
}

class PokeDb extends StatelessWidget {
  const PokeDb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themesBloc = BlocProvider.of<ThemeBloc>(context);
    return MaterialApp(
      title: 'PokeDB',
      routes: AppRoutes.getAppRoutes(),
      debugShowCheckedModeBanner: false,
      theme: themesBloc.state.themeData,
      initialRoute: AppRoutes.initialRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
