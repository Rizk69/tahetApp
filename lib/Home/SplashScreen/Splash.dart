import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Screens/Home.dart';

class SplashScreen extends StatefulWidget {
  static const String route = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage('lib/Asset/Splash.png'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/Asset/logo (1).png',
              height: 110, fit: BoxFit.fitHeight)
        ],
      ),
    );
  }
}
