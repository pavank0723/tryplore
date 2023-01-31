import 'package:flutter/cupertino.dart';
import 'package:tryplore/res/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  //#region Heading Regular
  static headlineR1({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 49.0, fontWeight: wFont, color: txtColor));

  static headlineR2({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 39.0, fontWeight: wFont, color: txtColor));

  static headlineR3({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 31.0, fontWeight: wFont, color: txtColor));

  static headlineR4({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 25.0, fontWeight: wFont, color: txtColor));

  static subTitle1R({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 20.0, fontWeight: wFont, color: txtColor));

  static subTitle2R({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 16.0, fontWeight: wFont, color: txtColor));

  static bodyR({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 13.0, fontWeight: wFont, color: txtColor));

  static captionR({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w400,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 10.0, fontWeight: wFont, color: txtColor));

//#endregion

//#redion Heading Medium
  static headline1M({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 49.0, fontWeight: wFont, color: txtColor));

  static headline2M({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 39.0, fontWeight: wFont, color: txtColor));

  static headline3M({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 31.0, fontWeight: wFont, color: txtColor));

  static headline4M({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 25.0, fontWeight: wFont, color: txtColor));

  static subTitle1M({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 20.0, fontWeight: wFont, color: txtColor));

  static subTitle2M({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 16.0, fontWeight: wFont, color: txtColor));

  static bodyM({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 13.0, fontWeight: wFont, color: txtColor));

  static captionM({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w500,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 10.0, fontWeight: wFont, color: txtColor));

//endregion

//#redion Heading Bold
  static headline1B({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 49.0, fontWeight: wFont, color: txtColor));

  static headline2B({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 39.0, fontWeight: wFont, color: txtColor));

  static headline3B({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 31.0, fontWeight: wFont, color: txtColor));

  static headline4B({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 25.0, fontWeight: wFont, color: txtColor));

  static subTitle1B({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 20.0, fontWeight: wFont, color: txtColor));

  static subTitle2B({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 16.0, fontWeight: wFont, color: txtColor));

  static bodyB({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 13.0, fontWeight: wFont, color: txtColor));

  static captionB({
    Color txtColor = AppColors.greyDark,
    FontWeight wFont = FontWeight.w700,
  }) =>
      GoogleFonts.roboto(
          textStyle:
              TextStyle(fontSize: 10.0, fontWeight: wFont, color: txtColor));
//#endregion
}
