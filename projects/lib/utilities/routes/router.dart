import 'package:flutter/cupertino.dart';
import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/view/pages/navbar_screen.dart';
import 'package:projects/view/pages/splash_screen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Routes.navbarPageRoute:
      return CupertinoPageRoute(
          builder: (context) => const NavbarScreen(), settings: routeSettings);
    case Routes.splashPageRoute:
    default:
      return CupertinoPageRoute(
          builder: (context) => const SplashScreen(), settings: routeSettings);
  }
}
