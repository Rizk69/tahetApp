import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Widget/FollowUs.dart';
import 'package:tahetapp/Home/HomePage/Widget/WidgetDrawer.dart';

class DrawerClick extends StatelessWidget {
  const DrawerClick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          child: Container(
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 19,
                    ),
                    Image.asset(
                      'lib/Asset/Rectangle 584.png',
                      height: 90,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'mahmoud elkomy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ])),
        ),
        Positioned(
          top: 200,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            alignment: AlignmentDirectional.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'lib/Asset/bgdrwar.png',
                    ),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                WidgetDrawer(
                    named: 'Edit Profile',
                    imagePath: 'lib/Asset/iconsprofile.png'),
                WidgetDrawer(
                    named: 'My Ads',
                    imagePath: 'lib/Asset/Icons/svgexport-7 (3) 1.png'),
                WidgetDrawer(
                    named: 'Setting',
                    imagePath: 'lib/Asset/Icons/svgexport-6 (32) 1.png'),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/Asset/Icons/svgexport-6 (29) 1.png',
                        height: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'LogOut',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0XFFBE3033),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                FollowUs()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
