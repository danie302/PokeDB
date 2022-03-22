import 'package:flutter/material.dart';

import 'package:pokedb/locator.dart';
import 'package:pokedb/themes/theme.dart';
import 'package:pokedb/widgets/widgets.dart';
import 'package:pokedb/screens/screens.dart';
import 'package:pokedb/routes/navigator.dart';
import 'package:pokedb/styles/styles.dart' as styles;

part 'form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = 'forgot_password';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: const [
            BackgroundImg(),
            _Form(),
          ],
        ),
      ),
    );
  }
}
