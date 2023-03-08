import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

abstract class Constants{
  static const double containerRoundCorner = 30;
  //!~> AppAssets: =====================================<
  static const String logoImg = "assets/MOVIE LOGO4 1.png";
  static const String splashImg = "assets/splash_image.jpg";
  static const String coverImg = "assets/cover 1.png";
  static const String slide1Img = "assets/justice_league 1.png";
  static const String slide2Img = "assets/2331348 1.png";
  static const String notfoundImg = "assets/phot03.webp";
  //!~> AppColors: =====================================<
  static const Color primaryColor = Color(0xFF171424);
  static const Color primaryLightLightColor = Color(0xFF1C1A29);
  static const Color fourthColor = Color(0xFF38354B);
  static const Color secondColor = Color(0xFFE82626);
  static const Color whiteColor = Color(0xFFffffff); 
  static const Color textLightColor = Color(0xFFDEDDDF);
  static const Color textDarkColor = Color(0xFF777777);
  static const Color textColor = Color(0xFFA4A3A9);

  //!~> AppStrings: =====================================<
  static const String appBartitleString = 'movie';
  //!~> AppCarouselOptions: =====================================<
  static CarouselOptions options = CarouselOptions(
  disableCenter: true,
  aspectRatio: 8 / 5,
  viewportFraction: 0.8,
  initialPage: 0,
  enableInfiniteScroll: true,
  reverse: false,
  autoPlay: true,
  autoPlayInterval: const Duration(seconds: 3),
  autoPlayAnimationDuration: const Duration(milliseconds: 800),
  autoPlayCurve: Curves.fastOutSlowIn,
  enlargeCenterPage: true,
  enlargeFactor: 0.3,
  scrollDirection: Axis.horizontal,
);
  static List carouselList =[
    Image.asset(slide1Img),
    Image.asset(slide2Img),
    Image.asset(slide1Img),
    Image.asset(slide2Img),
  ];
  //!~> ...: =====================================<
}

