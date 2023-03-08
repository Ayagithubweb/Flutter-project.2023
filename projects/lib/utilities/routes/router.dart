import 'package:flutter/cupertino.dart';
import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/view/screens/landing_screen.dart';

// CupertinoPageRoute? ...
Route<dynamic>? onGenerate(RouteSettings settings){
  switch (settings.name) {
    case Routes.landingRoute:
    default:
      return CupertinoPageRoute(builder: (_) => const LandingScreen(), settings: settings);

  }

}

// CupertinoPageRoute onGenerateRoute(RouteSettings setting ){
//   switch(setting.name){
//     case AppRoutes.navbarRoute:
//       return CupertinoPageRoute(builder: (_) => const BottomNavbarPage(),settings: setting);
//        case AppRoutes.detailsRoute:
//        var arge =setting.arguments as Map;
//       return CupertinoPageRoute(builder: (_) =>  DetailsPage(movie:arge),settings: setting);
//     default:
//       return CupertinoPageRoute(builder: (_) =>const SplashPage(),settings: setting);


//   }
  
// }