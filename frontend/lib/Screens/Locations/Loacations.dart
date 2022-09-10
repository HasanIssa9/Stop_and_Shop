import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'singlelocations.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/style/colors.dart';
class Loacations extends StatelessWidget {
  const Loacations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: 10,
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
              "المواقع الخاصة بي ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),),
        body:Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("اختر احد مواقعك " , style: TextStyle(color:greenColor , fontWeight: FontWeight.bold , fontSize: 20),),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("مواقعي",
                          style: TextStyle(
                              color: greenColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 17)),
                SizedBox(height: 10,),
                
                ]),
              ),
              Expanded(child: ListView.separated(
                          itemBuilder: (context, index) =>
                              buildsinglelocations(),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 0,
                              ),
                          itemCount: 10)),
          Expanded(
            child: Column(children: [
              Text(
                        "__________________________ او  ________________________",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(height: 50,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(130)
                        ),
                        child: 
            TextButton(
                            onPressed: () {}, child: Text("اضف موقع جديد" ,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18))),
                      ),
                      SizedBox(height: 50,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.circular(130)
                        ),
                        child: 
            TextButton(
                            onPressed: () {}, child: Text("اضف الموقع"  , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18),)),
                      ),
            
            
            ],)
          )
          ],
        ),
        )
    )  
  );}
}
