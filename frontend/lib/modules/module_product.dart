import 'package:get/get.dart';

class Product {
  final RxString nameProduct;
  final RxString imageProduct;
  final RxString descriptionProduct;
  final RxString categoryProduct;
  final RxString priceProduct;
  final RxDouble weightProduct = 0.5.obs;
  final RxBool isFavorite = false.obs;
  final RxBool isCart = false.obs;

  Product({
    required String nameProduct,
    required String imageProduct,
    required String descriptionProduct,
    required String categoryProduct,
    required String priceProduct,
  })  : nameProduct = nameProduct.obs,
        imageProduct = imageProduct.obs,
        descriptionProduct = descriptionProduct.obs,
        categoryProduct = categoryProduct.obs,
        priceProduct = priceProduct.obs;

  isFavoriteChanged() {
    isFavorite.value = true;
  }

  isCartChanged() {
    isCart.value = true;
  }

  static RxList<Product> products = <Product>[
    Product(
      nameProduct: 'موز',
      imageProduct:
          'https://w7.pngwing.com/pngs/332/204/png-transparent-banana-banana-natural-foods-food-fitness-thumbnail.png',
      descriptionProduct: 'descriptionProduct',
      categoryProduct: 'فواكه',
      priceProduct: '2000',
    ),
    Product(
      nameProduct: 'برتقال',
      imageProduct:
          'https://w7.pngwing.com/pngs/332/204/png-transparent-banana-banana-natural-foods-food-fitness-thumbnail.png',
      descriptionProduct: 'descriptionProduct',
      categoryProduct: 'فواكه',
      priceProduct: '2000',
    ),
    Product(
      nameProduct: 'موز',
      imageProduct:
          'https://w7.pngwing.com/pngs/332/204/png-transparent-banana-banana-natural-foods-food-fitness-thumbnail.png',
      descriptionProduct: 'descriptionProduct',
      categoryProduct: 'فواكه',
      priceProduct: '2000',
    ),
    Product(
      nameProduct: 'موز',
      imageProduct:
          'https://w7.pngwing.com/pngs/332/204/png-transparent-banana-banana-natural-foods-food-fitness-thumbnail.png',
      descriptionProduct: 'descriptionProduct',
      categoryProduct: 'فواكه',
      priceProduct: '2000',
    ),
    Product(
      nameProduct: 'موز',
      imageProduct:
          'https://w7.pngwing.com/pngs/332/204/png-transparent-banana-banana-natural-foods-food-fitness-thumbnail.png',
      descriptionProduct: 'descriptionProduct',
      categoryProduct: 'فواكه',
      priceProduct: '2000',
    ),
  ].obs;
}
