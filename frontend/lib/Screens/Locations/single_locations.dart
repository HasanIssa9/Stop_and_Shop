import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:stop_and_shop/style/colors.dart';

Widget buildsinglelocations() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    padding: const EdgeInsets.all(10),
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border.all(color: greenColor, width: 1, style: BorderStyle.solid)),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [Text("المنزل" , style: TextStyle(color: greenColor , fontSize: 18 , fontWeight: FontWeight.bold),), Text("الكرادة بغداد " , style: TextStyle(color: Colors.grey),)],
      ),
      TextButton(
          onPressed: () {},
          child: const Icon(
            Icons.remove_circle,
            color: Colors.red,
          ))
    ]),
  );
}
