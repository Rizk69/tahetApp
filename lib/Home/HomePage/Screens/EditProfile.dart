import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Widget/TxetFormField_.dart';

import '../Widget/TextInput.dart';

class EditProfile extends StatelessWidget {
static const String routeName='Edit';
  @override
  Widget build(BuildContext context) {
    var firstName = TextEditingController();
    var lastName = TextEditingController();
    var email = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text('Edit Profile',style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w700,fontStyle: FontStyle.normal),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              SizedBox(height: 20,),
              Center(
                child: Stack(
                  children: [
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor: Color(0XFFDADADA),
                        radius: 104,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('lib/Asset/Rectangle 584.png'), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 22,
                      child: CircleAvatar(
                        backgroundColor: Color(0XFFDADADA),
                        radius: 21,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('lib/Asset/Icons/iconss.png'), //NetworkImage
                          radius: 25,
                        ), //CircleAvatar
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height: 35,),
              TextFormField_(text: 'User Name', iconPath: 'lib/Asset/Icons/svgexport-6 (46) 1.png',),
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(
                    child: TextInput(
                      hintText: 'Mohamed',
                      error: 'First Name',
                      controller: firstName,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:TextInput(
                    hintText: 'Rizk',
                    error: 'Last Name',
                    controller: lastName,
                  ),)
                ],
              ),
              SizedBox(height: 15,),
              TextFormField_(text: 'Email', iconPath: 'lib/Asset/Icons/svgexport-6 (79) 1.png',),
              SizedBox(height: 5,),
              TextInput(
                hintText: 'Rizk@gmail.com',
                error: 'Email',
                controller: email,
              ),
              SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:60,vertical: 40),
                child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      backgroundColor: Color(0XFFEA630B),
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 83.0),
                    ),
                    onPressed: (){},
                    child: Text(
                      'confirm',
                      style: const TextStyle(fontStyle: FontStyle.italic,fontSize: 18, color: Colors.white,fontWeight:FontWeight.w400),
                    )),

              )
            ],
          ),
        ),
      ),



    );
  }
}
