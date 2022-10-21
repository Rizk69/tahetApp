
import 'package:flutter/material.dart';

class ButtomsItems extends StatelessWidget {
  Color color;
  String namedButtom;
  VoidCallback callBack;

  ButtomsItems(
      {required this.color, required this.namedButtom, required this.callBack});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 83.0),
        ),
        onPressed: callBack,
        child: Text(
          namedButtom,
          style: const TextStyle(fontSize: 18, color: Colors.white,fontWeight:FontWeight.w400),
        ));
  }
}
