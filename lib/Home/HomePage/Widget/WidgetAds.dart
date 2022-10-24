import 'package:flutter/material.dart';

class WidgetAds extends StatelessWidget {
  String imagePath;
  String named;
  Color color;
  bool select;
    final VoidCallback callBack;
  WidgetAds({required this.named,required this.imagePath,required this.color,required this.select, required this.callBack});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Row(children: [
        Image.asset(
          imagePath,
          height: 25,
        ),
        SizedBox(width: 8,),
        Text(named,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: color),),





      ]),
    );
  }
}
