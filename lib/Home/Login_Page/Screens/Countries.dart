import 'package:flutter/material.dart';
import 'package:tahetapp/Home/Login_Page/Widget/Buttom_Items.dart';
import 'package:tahetapp/Home/Login_Page/Widget/Countiner.dart';


class Countries extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            Image.asset(
              'lib/Asset/logo (1).png',
              height: 130,
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'please choose country',
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0XFF4B2771),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontFamily: 'Poppins' ),
            ),
            SizedBox(height: 6,),
            Text('You can change country from settings',style: TextStyle(
                fontSize: 18,
                color: Color(0XFF0F1010
                ),
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
                fontFamily: 'Poppins')),
            SizedBox(height: 40,),

            Counters(flagName: 'lib/Asset/Flag_of_Egypt.png',name: 'Egypt',),
            SizedBox(height: 8,),
            Counters(flagName: 'lib/Asset/Flag_of_Saudi_Arabia.png',name: 'Saudi Arabia',),
            SizedBox(height: 8,),
            Counters(flagName: 'lib/Asset/Flag.jpg',name: 'United Arab Emirates',),

            SizedBox(height: 30,),
            ButtomsItems(namedButtom:'confirm' ,color:Color(0XFFEA630B) ,callBack: (){},)












          ],
        ),
      ),
    );
  }
}
