import 'package:flutter/material.dart';

import 'package:pokedb/themes/theme.dart';

BoxDecoration authContainer = BoxDecoration(
  color: AppTheme.primary,
  borderRadius: const BorderRadius.only(
    topRight: Radius.circular(40),
    topLeft: Radius.circular(40),
  ),
  boxShadow: const [
    BoxShadow(color: AppTheme.secondary, spreadRadius: 8),
  ],
);
