import 'package:flutter/material.dart';

class TextFormField_ extends StatelessWidget {
  String iconPath;
  String text;

  TextFormField_({required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: 25,
          height: 25,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Color(0XFF364545),fontStyle: FontStyle.normal,fontFamily: 'Poppins',),
        )
      ],
    );
  }
}
