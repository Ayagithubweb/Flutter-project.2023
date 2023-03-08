import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/utilities/constants.dart';

//ToDo: FontWeight ........................
/*{FontWeight.w100: 'Thin',
FontWeight.w200: 'ExtraLight',
FontWeight.w300: 'Light',
FontWeight.w400: 'Regular',
FontWeight.w500: 'Medium',
FontWeight.w600: 'SemiBold',
FontWeight.w700: 'Bold',
FontWeight.w800: 'ExtraBold',
FontWeight.w900: 'Black',}*/
// App Colors
var primaryColor = const Color.fromARGB(255, 147, 71, 160);
var amberColor = Colors.amber;
var blackColor = const Color(0xFF000000);
var blackLightColor = const Color(0xFF808080);
var whiteColor = const Color(0xFFFFFFFF);

abstract class TextStyling {
  //! AppTextStyling: =============================================<
  static TextStyle titleStyle() => GoogleFonts.openSans(
      decoration: TextDecoration.none,
      fontSize: 21,
      color: Constants.textLightColor,
      fontWeight: FontWeight.w600);
  static TextStyle seeAllStyle() => GoogleFonts.openSans(
      decoration: TextDecoration.none,
      fontSize: 15,
      color: Constants.textDarkColor,
      fontWeight: FontWeight.w400);
  static TextStyle paraStyle() => GoogleFonts.openSans(
      decoration: TextDecoration.none,
      fontSize: 12,
      color: Constants.textLightColor,
      fontWeight: FontWeight.w400);
  static TextStyle paraCommentStyle() => GoogleFonts.openSans(
      decoration: TextDecoration.none,
      fontSize: 11,
      color: Constants.textColor,
      fontWeight: FontWeight.w400);
  static TextStyle details1Style() => GoogleFonts.openSans(
  decoration: TextDecoration.none,
      fontSize: 13,
      color: Constants.textLightColor,
      fontWeight: FontWeight.w400);
  static TextStyle details2Style() => GoogleFonts.openSans(
  decoration: TextDecoration.none,
      fontSize: 13,
      color: Constants.textDarkColor,
      fontWeight: FontWeight.w400);
  static TextStyle btnTextStyle() => GoogleFonts.openSans(
    decoration: TextDecoration.none,
      fontSize: 14,
      color: Constants.whiteColor,
      fontWeight: FontWeight.w600);

  //! pouplar(Standard): =============================================<
  static TextStyle buttonTextStyle() => GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 16,
      color: whiteColor,
      fontWeight: FontWeight.w600);
  static TextStyle titleTextStyle() => GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600);
  static TextStyle titlePrimaryTextStyle() => GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 20,
      color: primaryColor,
      fontWeight: FontWeight.w600);
  static TextStyle largeBlackTitleTextStyle() => GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w600);
  static TextStyle subTitleTextStyle() => GoogleFonts.poppins(
      decoration: TextDecoration.none,
      fontSize: 14,
      color: blackLightColor,
      fontWeight: FontWeight.w500);
  static TextStyle subTitleWhiteTextStyle() => GoogleFonts.poppins(
      decoration: TextDecoration.none,
      fontSize: 14,
      color: whiteColor,
      fontWeight: FontWeight.w500);
  static TextStyle subTitleBlackTextStyle() => GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 14,
      color: blackColor,
      fontWeight: FontWeight.w400);
  static TextStyle subTitlePrimaryTextStyle() => GoogleFonts.poppins(
      decoration: TextDecoration.none,
      fontSize: 14,
      color: primaryColor,
      fontWeight: FontWeight.w400);
  static TextStyle subTitleBoldTextStyle() => GoogleFonts.fredokaOne(
      letterSpacing: 1,
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w600);
  static TextStyle descriptionBlackTextStyle() => GoogleFonts.fredokaOne(
      letterSpacing: 1,
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w600);
  static TextStyle mediumTitleTextStyle() => GoogleFonts.fredokaOne(
      letterSpacing: 1,
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w400);
}
