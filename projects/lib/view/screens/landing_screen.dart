import 'package:flutter/material.dart';
import 'package:projects/utilities/style.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:Text("LandingScreen", style: TextStyling.titleStyle(),) ),);
  }
}