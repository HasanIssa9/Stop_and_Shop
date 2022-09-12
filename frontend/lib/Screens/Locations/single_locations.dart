import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:stop_and_shop/style/colors.dart';

class buildSingleLocations extends StatelessWidget {
  const buildSingleLocations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: greenColor, width: 1, style: BorderStyle.solid)),
      child: ListTile(
        title: Text(
          "المنزل",
          style: TextStyle(
              color: greenColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          "الكرادة بغداد ",
          style: TextStyle(color: Colors.grey),
        ),
        trailing: FloatingActionButton(
          onPressed: () {},
          mini: true,
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.remove,
          ),
        ),
      ),
    );
  }
}
