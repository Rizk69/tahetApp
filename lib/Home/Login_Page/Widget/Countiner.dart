import 'package:flutter/material.dart';

class Counters extends StatefulWidget {


  @override
  State<Counters> createState() => _CountersState();
}

class _CountersState extends State<Counters> {
  Color borderColor = Color(0XFFE5E5E5);
 bool _select1=false;
  bool _select2=false;
  bool _select3=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            setState(() {
              _select1=!_select1;
              _select2=false;
              _select3=false;
            });
          },
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color:_select1? Color(0XFFEA630B) : Color(0XFFE5E5E5))),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.asset('lib/Asset/Flag_of_Egypt.png', height: 30, fit: BoxFit.cover)),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Egypt',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          fontFamily: 'Poppins')),


                ],
              )),
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: (){
            setState(() {

              _select2=!_select2;
              _select1=false;
              _select3=false;

            });
          },
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color:_select2? Color(0XFFEA630B) : Color(0XFFE5E5E5))),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.asset('lib/Asset/Flag_of_Saudi_Arabia.png', height: 30, fit: BoxFit.cover)),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Saudi Arabia',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          fontFamily: 'Poppins')),


                ],
              )),
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: (){
            setState(() {
              _select3=!_select3;
              _select1=false;
              _select2=false;

            });
          },
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color:_select3? Color(0XFFEA630B) : Color(0XFFE5E5E5))),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.asset('lib/Asset/Flag.jpg', height: 30, fit: BoxFit.cover)),
                  SizedBox(
                    width: 15,
                  ),
                  Text('United Arab Emirates',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          fontFamily: 'Poppins')),


                ],
              )),
        ),
      ],
    );
  }
}
