import 'package:flutter/material.dart';
import 'package:pokedb/themes/theme.dart';

InputDecoration inputs = const InputDecoration(
  filled: true,
  fillColor: AppTheme.white,
  labelStyle: TextStyle(
    color: AppTheme.black,
  ),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  errorStyle: TextStyle(
    color: AppTheme.black,
    fontSize: 16,
    shadows: [
      Shadow(
        color: AppTheme.secondary,
        blurRadius: 10,
      ),
    ],
  ),
);
