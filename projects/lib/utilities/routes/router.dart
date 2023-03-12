import 'package:flutter/cupertino.dart';
import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/view/screens/details_design.dart';
// import 'package:projects/view/screens/details_screen.dart';
import 'package:projects/view/screens/navbar_screen.dart';
import 'package:projects/view/screens/splash_screen.dart';

Route<dynamic>? onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case Routes.detailsRoute:
      // var arge = settings.arguments as Map;movie: arge
      return CupertinoPageRoute(
          builder: (_) => const DetailsDesign(), settings: settings);
    // var arge = settings.arguments as Map;
    // return CupertinoPageRoute(builder: (_) => DetailsScreen(movie: arge), settings: settings);
    case Routes.navbarRoute:
      return CupertinoPageRoute(
          builder: (_) => const NavbarScreen(), settings: settings);
    case Routes.landingRoute:
    default:
      return CupertinoPageRoute(
          builder: (_) => const SplashScreen(), settings: settings);
  }
}
