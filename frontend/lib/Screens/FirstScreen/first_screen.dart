import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/Screens/AllScreen/AllScreen.dart';
import 'package:stop_and_shop/check_screens/login.dart';
import 'package:stop_and_shop/check_screens/register.dart';
import 'package:stop_and_shop/screens/HomeScreen/home_screen.dart';
import 'package:stop_and_shop/shared/components/components.dart';
import 'package:stop_and_shop/style/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BuildLogo(),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 550,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    width: 270,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/img_3.png'),
                      fit: BoxFit.scaleDown,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ContainerDesgin(
                    color: greenColor,
                    child: TextButton(
                      onPressed: () {
                        Get.to(Login());
                      },
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ContainerDesgin(
                    color: const Color(0xffF1F1F1),
                    child: TextButton(
                      onPressed: () {
                        Get.to(Signup());
                      },
                      child: Text(
                        'تسجيل',
                        style: TextStyle(
                          color: greenColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                      '__________________ او سجل دخول باستخدام __________________'),
                  const SizedBox(
                    height: 30,
                  ),
                  ContainerDesgin(
                    color: Colors.white,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/img_1.png',
                            width: 25,
                            height: 25,
                          ),
                          Text(
                            'سجل باستخدام',
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const AllScreen());
                    },
                    child: const Text(
                      'تخطي الان',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
