import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/shared/components/components.dart';
import '../../Services/local_database/shared_preferences.dart';
import '../../modules/module_product.dart';
import '../../style/colors.dart';
import '../CheckScreens/login.dart';
import '../CheckScreens/register.dart';
import '../HomeScreen/build_containers.dart';
import '../HomeScreen/search.dart';
import '../Details/details.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 20,
          title: TitleName(title: 'المفضلة'),
        ),
        body: (Database.prefs.getString('email')!.isNotEmpty)
            ? Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ----------------------------- Box title ----------------------------------------

                    // ----------------------------- Box search ---------------------------------------
                    Search(),
                    const SizedBox(
                      height: 15,
                    ),
                    // ------------------------------- List the product ---------------------------------
                    Expanded(
                      child: Obx(() {
                        return ListView(
                          children: [
                            Wrap(
                              alignment: WrapAlignment.center,
                              children: Product.products
                                  .where((e) => e.isFavorite.value == true)
                                  .map((e) => GestureDetector(
                                      onTap: () {
                                        Get.to(Details(
                                          product: e,
                                        ));
                                        e.isEdit.value = false;
                                      },
                                      child: BuildItem(
                                        imageUrl: e.imageProduct.value,
                                        nameProduct: e.nameProduct.value,
                                        categoryProduct:
                                            e.categoryProduct.value,
                                        price: e.priceProduct.value,
                                        product: e,
                                      )))
                                  .toList(),
                            )
                          ],
                        );
                      }),
                    )
                  ],
                ),
              )
            : Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerDesgin(
                        color: greenColor,
                        child: TextButton(
                          onPressed: () {
                            Get.to(Login());
                          },
                          child: const Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ContainerDesgin(
                        color: greenColor,
                        child: TextButton(
                          onPressed: () {
                            Get.to(Signup());
                          },
                          child: const Text(
                            'تسجيل',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
