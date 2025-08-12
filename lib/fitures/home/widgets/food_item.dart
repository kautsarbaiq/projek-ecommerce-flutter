import 'package:ecommerce_mobile/fitures/home/model/item_model.dart';
import 'package:ecommerce_mobile/fitures/home/screen/detail_screen.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key, required this.item});

  @override
  State<FoodItem> createState() => _FoodItemState();

  final ItemFoodModel item;
}

class _FoodItemState extends State<FoodItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 183,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: widget.item.bgColor ?? Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0xff202020).withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(10),

      child: Stack(
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => DetailScreen()
                      ), 
                        );
                },
                child: Image.asset(widget.item.imagepath, width: 90),
              ),
              SizedBox(height: 16),
              Text(
                widget.item.name,
                style: TextStyle(fontWeight: FontWeight.w500),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 14),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.item.price,
                    style: TextStyle(color: Color(0xffFFA451)),
                  ),
                  SizedBox(width: 36),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffFFF2E7),
                    ),
                    child: Icon(Icons.add, color: Color(0xffFFA451), size: 12),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
                size: 23,
                color: Color(0xffFFA451),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
