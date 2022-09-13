import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_and_shop/Screens/CheckOutScreen/check_out.dart';
import 'package:stop_and_shop/modules/module_cart.dart';
import 'package:stop_and_shop/style/colors.dart';
import '../../shared/components/components.dart';
import '../HomeScreen/search.dart';
import 'build_cart_item.dart';

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
          title: TitleName(title: 'سلتي'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: greenColor, borderRadius: BorderRadius.circular(16)),
                child: TextButton(
                  onPressed: () {
                    Get.to(const CheckOut());
                  },
                  child: const Text(
                    'الدفع',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ----------------------------- Box search ---------------------------------------
              const Search(),
              const SizedBox(
                height: 15,
              ),
              // ------------------------------- List the product ---------------------------------
              Expanded(
                child: Stack(
                  children: [
                    Obx(() {
                      return ListView(
                        children: CartModule.products
                            .map(
                              (e) => BuildCartItem(
                                product: e.product,
                                nameProduct: e.nameProduct.value,
                                weightProduct: e.weightProduct.value,
                                imageUrl: e.imageProduct.value,
                                price: e.priceProduct.value,
                              ),
                            )
                            .toList(),
                      );
                    }),
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
