import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stop_and_shop/Services/API/api.dart';

class Category {
  Category({
    required this.name,
    required this.description,
    required this.image,
    required this.isActive,
    required this.children,
  });

  final String name;
  final String description;
  final String image;
  final bool? isActive;
  final List<dynamic> children;

  static List<Category> categoryFromJson(String str) =>
      List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

  static String categoryToJson(List<Category> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
        description: json["description"],
        image: json["image"],
        isActive: json["is_active"],
        children: List<dynamic>.from(json["children"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "image": image,
        "is_active": isActive,
        "children": List<dynamic>.from(children.map((x) => x)),
      };

  static Future<List<Category>> getCategories() async {
    var res = await http
        .get(Uri.parse(Api.categoriesUrl));

    List<Category> categories = categoryFromJson(res.body);
    return categories;
  }
}
