import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/Screens/HomeScreen/build_containers.dart';
import 'package:stop_and_shop/Screens/HomeScreen/search.dart';
import 'package:stop_and_shop/modules/module_product.dart';

import '../../modules/module_category.dart';
import '../details/details.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            category.nameCategory,
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // ----------------------------- Box title ----------------------------------------

            // ----------------------------- Box search ---------------------------------------
            Search(),
            const SizedBox(
              height: 15,
            ),
            // ------------------------------- List the product ---------------------------------
            Expanded(child: Obx(() {
              return ListView(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: Product.products
                        .where((e) =>
                            e.categoryProduct.value == category.nameCategory)
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
                            )))
                        .toList(),
                  )
                ],
              );
            }))
          ]),
        ),
      ),
    );
  }
}
