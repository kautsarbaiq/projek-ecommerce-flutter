import 'package:ecommerce_mobile/preference/Customicon_icons.dart';
import 'package:ecommerce_mobile/fitures/home/model/item_model.dart';
import 'package:ecommerce_mobile/fitures/home/widgets/food_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.name});

  final String? name;

  final List<String> category = [
    "Hottest",
    "Popular",
    "New combo",
    "Top",
    "Most Like",
    "Recently Added",
    "Newest",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Customicon.menu, size: 14),
              Column(
                children: [
                  Icon(Customicon.cart, color: Color(0xffFFA451)),
                  Text("My basket", style: TextStyle(fontSize: 10)),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "Hello $name, What fruit salad combo\ndo you want today?",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 37),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Customicon.filter, color: Color(0xff000000)),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 37),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recommended Combo",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FoodItem(
                    item: ItemFoodModel(
                      imagepath: "assets/images/recommend_1.png",
                      name: "Honey lime combo",
                      price: "Rp 2.000",
                    ),
                  ),
                  FoodItem(
                    item: ItemFoodModel(
                      imagepath: "assets/images/recommend_2.png",
                      name: "Berry mango combo",
                      price: "Rp 8.000",
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 60),
          SizedBox(
            height: 25,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  category[index],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 26);
              },
              itemCount: category.length,
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 182,
            child: ListView(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: "assets/images/food_bottom1.png",
                    name: "Quinoa fruit salad",
                    price: "Rp 10.000",
                    bgColor: Color(0xffFFFAEB),
                  ),
                ),
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: "assets/images/food_bottom2.png",
                    
                    name: "Tropical fruit salad",
                    price: "Rp 10.000",
                    bgColor: Color(0xffFEF0F0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
