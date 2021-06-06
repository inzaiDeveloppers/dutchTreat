import 'package:flutter/material.dart';
import 'package:flutter_app/view/common/style.dart';
import 'package:flutter_app/view/pages/normal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TableApp',
      theme: ThemeData(
        primarySwatch: AppThemeColor.primaryColor,
      ),
      initialRoute: '/normal',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          // case "/":
          //   return MaterialPageRoute(builder: (context) => TopPage());
          case "/normal":
            return MaterialPageRoute(builder: (context) => NormalPage());
          default:
            return null;
        }
      },
    );
  }
}
