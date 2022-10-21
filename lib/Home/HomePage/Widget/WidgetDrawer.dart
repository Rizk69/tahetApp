import 'package:flutter/material.dart';

class WidgetDrawer extends StatelessWidget {
String named;
String imagePath;
WidgetDrawer({required this.named,required this.imagePath });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 15),
      padding: EdgeInsets.symmetric(vertical:20 ,horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(imagePath,height: 30,),
          SizedBox(width: 10,),
          Text(named,style: TextStyle(fontSize:17,color: Color(0XFF110101),fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),
          Spacer(),
          Image.asset('lib/Asset/icon.png',width: 25,)
        ],
      ),

    );
  }
}
