import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Screens/EditProfile.dart';
import 'package:tahetapp/Home/HomePage/Screens/Home.dart';
import 'package:tahetapp/Home/HomePage/Screens/myAdsPage.dart';
import 'package:tahetapp/Home/HomePage/Widget/Settings.dart';
import 'package:tahetapp/Home/Login_Page/Screens/Countries.dart';
import 'package:tahetapp/Home/Login_Page/Screens/Login_Screen.dart';

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
        HomeScreen.routeName:(_)=>HomeScreen(),
        EditProfile.routeName:(_)=>EditProfile(),
        MyAdsPage.routeName:(_)=>MyAdsPage(),
        Setting.routeName:(_)=>Setting(),
        Countries.route:(_)=>Countries(),
        LoginScreen.route:(_)=>LoginScreen()

      },
    );
  }
}