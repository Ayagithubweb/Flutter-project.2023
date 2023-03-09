import 'package:flutter/cupertino.dart';
import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/view/screens/navbar_screen.dart';
import 'package:projects/view/screens/splash_screen.dart';

Route<dynamic>? onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case Routes.navbarRoute:
      return CupertinoPageRoute(
          builder: (_) => const NavbarScreen(), settings: settings);
    case Routes.landingRoute:
    default:
      return CupertinoPageRoute(
          builder: (_) => const SplashScreen(), settings: settings);
  }
}
