import 'package:flutter/material.dart';

class TabsSettings extends StatelessWidget {
String imagePath;
String named;
TabsSettings({required this.imagePath,required this.named});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:20 ,horizontal:30 ),
      child: Row(
        children: [
          Image.asset(imagePath,height: 30,),
          SizedBox(width: 14,),
          Text(named,style:TextStyle(fontSize: 18,color: Color(0XFF110101),fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}
