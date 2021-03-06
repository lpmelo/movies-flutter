import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'core/theme_app.dart';
import 'pages/movie_page.dart';

void main() {
  Function duringSplash;

  duringSplash = () {
    print('background process');
    int a;
    a = 123 + 23;
    print(a);

    if (a > 100) {
      return 1;
    } else {
      return 2;
    }
  };
  var op = <int, Widget>{1: MyApp(), 2: MyApp()};
  runApp(MaterialApp(
    home: CustomSplash(
      imagePath: 'assets/images/logo.png',
      backGroundColor: Colors.grey,
      animationEffect: 'fade-in',
      logoSize: 200,
      home: MyApp(),
      customFunction: duringSplash,
      duration: 2500,
      type: CustomSplashType.StaticDuration,
      outputAndHome: op,
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: kThemeApp,
      home: MoviePage(),
    );
  }
}
