import 'package:flutter/material.dart';

class Counters extends StatefulWidget {
  String name;
  String flagName;
  Counters({required this.name, required this.flagName});

  @override
  State<Counters> createState() => _CountersState();
}

class _CountersState extends State<Counters> {
  Color borderColor = Color(0XFFE5E5E5);
 bool _select=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          _select=!_select ;

        });
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color:_select? Color(0XFFEA630B) : Color(0XFFE5E5E5))),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Image.asset(widget.flagName, height: 30, fit: BoxFit.cover)),
              SizedBox(
                width: 15,
              ),
              Text(widget.name,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins')),

            ],
          )),
    );
  }
}
