import 'package:flutter/material.dart';
import 'package:flutter_app/view/common/style.dart';

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
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(builder: (context) => TopPage());
          case "/setting":
            return MaterialPageRoute(builder: (context) => TopPage());
          case "/usage":
            return MaterialPageRoute(builder: (context) => TopPage());
          case "/help":
            return MaterialPageRoute(builder: (context) => TopPage());
          case "/restaurantlist":
            return MaterialPageRoute(builder: (context) => TopPage());
          case "/login":
            return MaterialPageRoute(builder: (context) => TopPage());
          case "/signin":
            return MaterialPageRoute(builder: (context) => SigninPage());
          case "/qrscan":
            return MaterialPageRoute(
                builder: (context) => QRViewExample(), fullscreenDialog: true);
          default:
            return null;
        }
      },
    );
  }
}
