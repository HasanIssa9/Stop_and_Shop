import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/module_product.dart';
import '../../shared/components/components.dart';
import '../HomeScreen/build_containers.dart';
import '../HomeScreen/search.dart';
import '../details/details.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

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
          title: TitleName(title: 'سلتي'),
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
                            .where((e) => e.isCart.value == true)
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
