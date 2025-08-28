import 'package:flutter/widgets.dart';

class ItemFoodModel {
  final String imagepath;
  final String name;
  final String price;
  Color? bgColor = Color(0xffFFFFFF);

  ItemFoodModel({
    required this.imagepath,
    required this.name,
    required this.price,
    this.bgColor,
  });

  
}
