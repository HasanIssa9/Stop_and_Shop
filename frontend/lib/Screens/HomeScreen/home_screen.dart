import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/Screens/Categories/categories.dart';
import 'package:stop_and_shop/Screens/HomeScreen/search.dart';
import '../../modules/module_product.dart';
import '../../modules/module_category.dart';
import '../../shared/components/components.dart';
import 'build_containers.dart';
import 'delivery_image.dart';
import 'package:stop_and_shop/Screens/Details/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "STOP & SHOP STORE",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مرحبا علي ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const Text(
                "ابحث عن الطعام الطازج وقتما تشاء",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
              // --------------------------box search----------------------------
              Search(),

              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    const DeliveryImage(),
                    // -------------------------first section--------------------------
                    Row(
                      children: [TitleName(title: 'الفئات')],
                    ),
                    SizedBox(
                      height: 110,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: Category.categories
                            .map(
                              (e) => GestureDetector(
                                onTap: () {
                                  Get.to(Categories(
                                    category: e,
                                  ));
                                },
                                child: BuildCategory(
                                  name: e.nameCategory,
                                  image: e.imageCategory,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),

                    Row(
                      children: [TitleName(title: 'افضل المنتجات')],
                    ),
                    SizedBox(
                      height: 195,
                      child: Obx(() {
                        return ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: Product.products
                              .map((e) => GestureDetector(
                                    onTap: () {
                                      Get.to(Details(
                                        product: e,
                                      ));
                                    },
                                    child: BuildItem(
                                      imageUrl: e.imageProduct.value,
                                      nameProduct: e.nameProduct.value,
                                      categoryProduct: e.categoryProduct.value,
                                      price: e.priceProduct.value,
                                      product: e,
                                    ),
                                  ))
                              .toList(),
                        );
                      }),
                    ),

                    Row(
                      children: [TitleName(title: 'منتجات عليها خصم')],
                    ),
                    SizedBox(
                      height: 195,
                      child: Obx(() {
                        return ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: Product.products
                              .map((e) => GestureDetector(
                                    onTap: () {
                                      Get.to(Details(
                                        product: e,
                                      ));
                                    },
                                    child: BuildItem(
                                      imageUrl: e.imageProduct.value,
                                      nameProduct: e.nameProduct.value,
                                      categoryProduct: e.categoryProduct.value,
                                      price: e.priceProduct.value,
                                      product: e,
                                    ),
                                  ))
                              .toList(),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
