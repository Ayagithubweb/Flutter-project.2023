import 'package:flutter/material.dart';
import 'package:projects/services/dio_helper.dart';
import 'package:projects/utilities/routes/router.dart';
import 'package:projects/utilities/theme.dart';
// import 'package:projects/view/screens/details_design.dart';
// import 'package:projects/view/screens/navbar_screen.dart';
import 'package:projects/view/screens/splash_screen.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: theme,
      onGenerateRoute: onGenerate,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
