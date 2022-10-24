import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Widget/FollowUs.dart';
import 'package:tahetapp/Home/HomePage/Widget/Lines.dart';
import 'package:tahetapp/Home/HomePage/Widget/TabsSettings.dart';
import 'package:tahetapp/Home/HomePage/Widget/WidgetAds.dart';

class Setting extends StatelessWidget {
  static const String routeName = 'setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            'Setting',
            style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.bold,
                fontFamily: '',
                fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TabsSettings(
                named: 'language',
                imagePath: 'lib/Asset/Icons/World.png',
              ),
              Lines(),
              TabsSettings(
                named: 'Terms and Conditions',
                imagePath: 'lib/Asset/Icons/svgexport-6 (18) 1.png',
              ),
              Lines(),
              TabsSettings(
                named: 'Privacy',
                imagePath: 'lib/Asset/Icons/svgexport-6 (23) 1.png',
              ),
              Lines(),
              TabsSettings(
                named: 'About Us',
                imagePath: 'lib/Asset/Icons/svgexport-7 (3) 1 (1).png',
              ),
              Lines(),
              TabsSettings(
                named: 'Contact Us',
                imagePath: 'lib/Asset/Icons/svgexport-6 (20) 1.png',
              ),
              Lines(),
              TabsSettings(
                named: 'Rate App',
                imagePath: 'lib/Asset/Icons/svgexport-6 (21) 1.png',
              ),
              Lines(),
              TabsSettings(
                named: 'Share App',
                imagePath: 'lib/Asset/Icons/svgexport-6 (22) 1.png',
              ),
              Lines(),
              SizedBox(
                height: 60,
              ),
              FollowUs()
            ],
          ),
        ));
  }
}
