import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Widget/WidgetAds.dart';

class MyAdsPage extends StatelessWidget {
  static const String routeName = 'myAdsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            'My Ads',
            style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.bold,
                fontFamily: '',
                fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset('lib/Asset/Group 78.png'),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 6)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('lib/Asset/img.png',
                            width: MediaQuery.of(context).size.width / 2,
                            fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 130,
                                  child: Text(
                                      'Rolex gold watch with white hands',
                                      textAlign: TextAlign.start,
                                      maxLines: 3,
                                      softWrap: true)),
                              SizedBox(
                                height: 65,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/Asset/Icons/svgexport-6 (11) 1.png',
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 110,
                                    child: Text(
                                      'Cairo - Egypt -unite...',maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0XFF9C9C9C), fontSize: 14),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal:22 ,vertical:24 ),
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                          color: Color(0XFFEBE8EF),
                          borderRadius: BorderRadius.circular(16)),
                      height: 70,
                      width: 330,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                WidgetAds(
                                  imagePath: 'lib/Asset/Icons/svgexport-6 (14) 1.png',
                                  named: 'View',color:Color(0XFF364545) ,select: true,callBack: (){},
                                ),
                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),

                                  height: 35,
                                  width: 5,
                                ),
                              ],
                            ),
                          ),




                Expanded(
                  child:Row(
                    children: [
                      WidgetAds(
                                imagePath: 'lib/Asset/Icons/svgexport-6 (34) 1.png',
                                named: 'Edit',color:Color(0XFF364545) ,select: true,callBack:(){},
                              ),
                      SizedBox(width: 10,),

                      Container(
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),

                        height: 35,
                        width: 5,
                      ),
                    ],
                  ),),


                Expanded(
                  child:WidgetAds(
                            imagePath: 'lib/Asset/Icons/svgexport-6 (35) 1.png',
                            named: 'Delete',color:Color(0XFFEA630B) ,select: false,callBack:(){} ,
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
