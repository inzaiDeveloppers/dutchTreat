import 'package:flutter/material.dart';

class AppColor {
  double _opacity = 1.0;

  AppColor([double opacity]) {
    if (opacity != null) {
      _opacity = opacity;
    }
  }

  Color get brown => Color.fromRGBO(223, 131, 68, _opacity); //main
  Color get red => Color.fromRGBO(223, 75, 68, _opacity); //emphasize
  Color get text => Color.fromRGBO(63, 37, 19, _opacity); //text
}

class AppTextTheme {
  ThemeData get theme => ThemeData(
        textTheme: TextTheme(
          button: TextStyle(
            color: AppColor().text,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          // ここからsample
          headline1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

class AppSpacer {
  static const double biggest = 40;
  static const double bigger = 20;
}

// アプリ全体のテーマカラー
class AppThemeColor {
  static const int _primaryValue = 0xFFDF630E;
  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(_primaryValue),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );
}
