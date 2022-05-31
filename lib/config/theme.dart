import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/resources/fonts.dart';
import 'package:flutter/material.dart';

ThemeData customAppTheme() => ThemeData(
      // Define the default Brightness and Colors
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 5),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black),
        ),
      ),
      textTheme: AppTextTheme._textTheme,
    );

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme _textTheme = TextTheme(
    bodyText1: _defaultFont,
    bodyText2: _defaultFont,
    headline1: _defaultFont,
    headline2: _defaultFont,
    headline3: _defaultFont,
    headline4: _defaultFont,
    headline5: _defaultFont,
    headline6: _defaultFont,
    subtitle1: _defaultFont,
    subtitle2: _defaultFont,

  );

  static const TextStyle _defaultFont = TextStyle(
      fontFamily: AppFont.defaultFont,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      color: Colors.black,
      fontSize: 14.0);

  static const TextStyle montserrat = TextStyle(
    fontFamily: AppFont.montserrat,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    color: Colors.black,
    fontSize: 14.0,
  );

  static const TextStyle notosans = TextStyle(
    fontFamily: AppFont.notosans,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    color: Colors.black,
    fontSize: 14.0,
  );

  static const TextStyle roboto = TextStyle(
    fontFamily: AppFont.roboto,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    color: Colors.black,
    fontSize: 14.0,
  );
}
