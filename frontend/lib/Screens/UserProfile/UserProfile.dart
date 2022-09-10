import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:stop_and_shop/style/colors.dart';
class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            title:Center(child:  Text(
              "الملف الشخصي",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),),
        body:Padding(padding: EdgeInsets.all(10),
        child:  Column(children: [
          Row(
            children: [
             Expanded(child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("اهلا , مرتضى ", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25 ,),),
                  Text("07828226965" ,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ), ),
                  Text("anything@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      )
                ],
              ),
               ),
               
               Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset("assets/images/img_2.png" ),
                        ),
                        TextButton(onPressed: (){}, child: Text("Edit" , style: TextStyle(color: Colors.black),))
                      ],
                    ),

            ],
          ),
          Container(
            width: double.infinity,
            height:1,
            color: Colors.black,
          ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 29 ,horizontal: 10),
          child: Expanded(
                    child: Column(
                  children: [
                    GestureDetector(
                        child: Row(
                      children: [Icon(Icons.gps_fixed), 
                      SizedBox(width:10),
                      Text("مواقي")],
                    )),
                    SizedBox(height: 20,),
                    
                    GestureDetector(
                        child: Row(
                      children: [Icon(Icons.chat  ), 
                      SizedBox(width:10),
                      Text("تواصل معنا")],
                    )),
                    SizedBox(height: 20,),
                    
                    GestureDetector(
                        child: Row(
                      children: [Icon(Icons.language),
                      SizedBox(width:10),
                      Text("تغير الفة ")],
                    )),
                  ],
                )),
        ),
        Expanded(child: 
        Container(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(
                    child: Text("about ver:0.1 beta"),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.logout, color: Colors.red),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "تسجيل الخروج",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ))
                ]),
              ))
        ]),
      ),
        ));
  }
}
