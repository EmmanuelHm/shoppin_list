import 'package:flutter/material.dart';
import 'package:shopping_list/Utils/AssetsImages.dart';
import 'package:shopping_list/Utils/ConstantsApp.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'Screens/Login/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase y Flutter',
      theme: ThemeData(
        primaryColor: Color(0xff2c2b50),
        primaryColorDark: Color(0xff050028),
        primaryColorLight: Color(0xff57547c),

        accentColor: Color(0xffedecee),
        // backgroundColor: Color(0xffffffff),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: WelcomeScreen(),
      duration: ConstantsApp.TIME_SPLASH_SCREEN,
      imageSize: 330,
      imageSrc: AssetsImages.image,
      backgroundColor: Colors.grey[300],
    );
  }
}
