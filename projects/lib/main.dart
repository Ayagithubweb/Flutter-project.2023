import 'package:flutter/material.dart';
import 'package:projects/utilities/routes/router.dart';
import 'package:projects/utilities/style.dart';
import 'package:projects/utilities/theme.dart';

void main() {
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
      home: Scaffold(body: Center(child: Column(children: [
        Text("Hi...",style: TextStyling.buttonTextStyle()),
        Text("Hi...",style: TextStyling.descriptionBlackTextStyle()),
        Text("Hi...",style: TextStyling.largeBlackTitleTextStyle()),
        Text("Hi...",style: TextStyling.mediumTitleTextStyle()),
        Text("Hi...",style: TextStyling.subTitleBlackTextStyle()),
        Text("Hi...",style: TextStyling.subTitleBoldTextStyle()),
        Text("Hi...",style: TextStyling.subTitlePrimaryTextStyle()),
        Text("Hi...",style: TextStyling.subTitleTextStyle()),
        Text("Hi...",style: TextStyling.subTitleWhiteTextStyle()),
        Text("Hi...",style: TextStyling.titlePrimaryTextStyle()),
        Text("Hi...",style: TextStyling.titleTextStyle()),
        
      ]),)),
    );
  }
}