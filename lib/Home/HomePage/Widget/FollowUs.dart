import 'package:flutter/material.dart';

class FollowUs extends StatelessWidget {
  const FollowUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 80),
        child: Column(children: [
          Text("Follow Us",style: TextStyle(fontSize:17,color: Color(0XFF1C2B3E),fontWeight: FontWeight.w800,fontFamily: 'Poppins'),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              IconButton(
                onPressed: (){},
                icon: Image.asset('lib/Asset/Icons/svgexport-6 (38) 1.png'),
              ),
              IconButton(
                onPressed: (){},
                icon: Image.asset('lib/Asset/Icons/svgexport-6 (39) 1.png'),
              ),
              IconButton(
                onPressed: (){},
                icon: Image.asset('lib/Asset/Icons/svgexport-6 (40) 1.png'),
              ),
              IconButton(
                onPressed: (){},
                icon: Image.asset('lib/Asset/Icons/svgexport-6 (41) 1.png'),
              ),
            ],
          )

        ],));
  }
}
