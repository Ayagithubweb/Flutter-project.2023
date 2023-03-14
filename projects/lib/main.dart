import 'package:flutter/material.dart';
import 'package:projects/services/cache_helper.dart';
import 'package:projects/services/dio_helper.dart';
import 'package:projects/utilities/routes/router.dart';
import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/utilities/theme.dart';

void main() {
  // ToDo:~> to init helperFun before runApp ...
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme:theme,
      onGenerateRoute: onGenerateRoute,
      initialRoute: Routes.homePageRoute,
    );
  }
}