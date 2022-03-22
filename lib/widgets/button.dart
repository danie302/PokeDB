import 'package:flutter/material.dart';

import 'package:pokedb/themes/theme.dart';
import 'package:pokedb/styles/styles.dart' as styles;

class Button extends StatelessWidget {
  final double height;
  final double minWidth;
  final String text;
  const Button({
    Key? key,
    this.height = 20,
    this.minWidth = 50,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: minWidth,
      color: AppTheme.secondary,
      textColor: AppTheme.primary,
      shape: const StadiumBorder(),
      child: Text(text, style: styles.buttonText),
      onPressed: () {},
    );
  }
}
