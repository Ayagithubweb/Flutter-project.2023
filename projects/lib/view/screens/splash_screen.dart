import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:projects/utilities/constants.dart';
import 'package:projects/utilities/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.popAndPushNamed(context, Routes.navbarRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          Constants.coverImg,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Constants.primaryColor.withOpacity(0.8),
        ),
        Center(
          child: ZoomIn(
            duration: const Duration(milliseconds: 1000),
            child: Image.asset(
              Constants.logoImg,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    )
        //Center(child: Text("SplashScreen",style:Theme.of(context).textTheme.headline5)),
        );
  }
}
