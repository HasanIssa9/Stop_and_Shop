import 'package:flutter/material.dart';
import 'single_locations.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/style/colors.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
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
              title: const Text(
                "المواقع الخاصة بي ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            body: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "اختر احد مواقعك ",
                    style: TextStyle(
                        color: greenColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("مواقعي",
                              style: TextStyle(
                                  color: greenColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17)),
                          const SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                  Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) =>
                              buildsinglelocations(),
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 0,
                              ),
                          itemCount: 10)),
                  Expanded(
                      child: Column(
                    children: [
                      const Text(
                        "__________________________ او  ________________________",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(130)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text("اضف موقع جديد",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18))),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.circular(130)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "اضف الموقع",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                      ),
                    ],
                  ))
                ],
              ),
            )));
  }
}
