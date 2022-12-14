import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:stop_and_shop/Services/API/api.dart';
import 'package:stop_and_shop/modules/module_category.dart';

class Product {
  final int? id;
  final RxString name;
  final RxString image;
  final RxString description;
  final RxString category;
  final RxInt price;
  final RxDouble weight;
  final RxBool isFavorite = false.obs;
  final RxBool isCart = false.obs;
  final RxBool isEdit = false.obs;
  static final RxBool isSearch = false.obs;

  Product({
    this.id,
    required double weight,
    required String name,
    required String image,
    required String description,
    required String category,
    required int price,
  })  : name = name.obs,
        image = image.obs,
        description = description.obs,
        category = category.obs,
        price = price.obs,
        weight = weight.obs;

  isFavoriteChanged() {
    isFavorite.value = true;
  }

  static isSearchChanged() {
    isSearch.value = true;
  }

  isCartChanged() {
    isCart.value = true;
  }

  isEditItemCart() {
    isEdit.value = true;
  }

  static RxString search = ''.obs;

  static List<Product> productFromJson(String str) =>
      List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

  static String productToJson(List<Product> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        category: Category.fromJson(json["category"]).name ,
        name: json["name"],
        weight: json["weight"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category.toJson(),
        "name": name,
        "weight": weight,
        "price": price,
        "description": description,
        "image": image,
      };

  static Future<RxList<Product>> getProducts() async {
    var res = await http
        .get(Uri.parse(Api.productsUrl));


    products = productFromJson(res.body).obs;
    return products;
  }

  static RxList<Product> products = <Product>[].obs;
}
