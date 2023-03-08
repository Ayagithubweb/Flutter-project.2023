import 'package:flutter/material.dart';
import 'package:projects/utilities/constants.dart';

//!~> Theme: =====================================<
ThemeData theme = ThemeData(
  appBarTheme:
      const AppBarTheme(backgroundColor: Constants.primaryLightLightColor),
  iconTheme: const IconThemeData(color: Constants.textColor),
  primarySwatch: MaterialColor(
    Constants.primaryColor.value,
    <int, Color>{
      50: Constants.primaryColor.withOpacity(0.1),
      100: Constants.primaryColor.withOpacity(0.2),
      200: Constants.primaryColor.withOpacity(0.3),
      300: Constants.primaryColor.withOpacity(0.4),
      400: Constants.primaryColor.withOpacity(0.5),
      500: Constants.primaryColor.withOpacity(0.6),
      600: Constants.primaryColor.withOpacity(0.7),
      700: Constants.primaryColor.withOpacity(0.8),
      800: Constants.primaryColor.withOpacity(0.9),
      900: Constants.primaryColor.withOpacity(1),
    },
  ),
  scaffoldBackgroundColor: Constants.primaryColor,
);
