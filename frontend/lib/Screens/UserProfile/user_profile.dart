import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/Screens/Locations/locations.dart';
import 'package:stop_and_shop/style/colors.dart';

import '../../shared/components/components.dart';
import '../CheckScreens/contents.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);

  final TextEditingController fullName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: TitleName(title: 'الملف الشخصي'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'اهلا , مرتضى ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'anything@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/img_2.png'))),
                      ),
                      TextButton(
                        onPressed: () {
                          final alertAddName = Directionality(
                              textDirection: TextDirection.rtl,
                              child: AlertDialog(
                                title: const Text('تعديل معلوماتي'),
                                content: SizedBox(
                                  height: 200,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Divider(
                                        color: Colors.black,
                                        height: 5,
                                      ),
                                      ContainerDesgin(
                                        color: Colors.white,
                                        child: MyTextField(
                                            label: 'الاسم الكامل',
                                            controller: fullName),
                                      ),
                                      ContainerDesgin(
                                        color: Colors.white,
                                        child: MyTextField(
                                            label: 'رقم الهاتف',
                                            controller: phoneNumber),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 3),
                                          decoration: BoxDecoration(
                                              color: greenColor,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: const [
                                              Text(
                                                'حفظ التغيرات',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.save,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                          showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return alertAddName;
                              });
                        },
                        child: Text(
                          'تعديل',
                          style: TextStyle(color: greenColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Expanded(
                    child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(Locations());
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.location_pin),
                          SizedBox(width: 10),
                          Text("مواقعي")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        children: const [
                          Icon(Icons.chat),
                          SizedBox(width: 10),
                          Text("تواصل معنا")
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              const Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("about ver:0.1 beta"),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.logout, color: Colors.red),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "تسجيل الخروج",
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        )
                      ],
                    ))
              ])
            ]),
          ),
        ));
  }
}
