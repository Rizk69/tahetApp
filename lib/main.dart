import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Screens/Home.dart';

import 'Home/SplashScreen/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute:SplashScreen.route ,
      routes: {
        SplashScreen.route: (_) => SplashScreen(),
        HomeScreen.routeName:(_)=>HomeScreen()

      },
    );
  }
}