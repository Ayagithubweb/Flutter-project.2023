import 'package:flutter/cupertino.dart';
import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/view/pages/home_page.dart';

Route<dynamic>? onGenerateRoute(RouteSettings routeSettings ){
  switch (routeSettings.name) {
    case Routes.homePageRoute:
    default:
    return  CupertinoPageRoute(builder:(context) => const HomePage()  , settings: routeSettings);
  }
}