import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/shared/components/components.dart';
import '../../modules/module_product.dart';
import '../HomeScreen/build_containers.dart';
import '../HomeScreen/search.dart';
import '../details/details.dart';

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
          leading: TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
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
                          onTap: (){
                            Get.to(Details(product: e,));
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
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
