import 'package:ecommerce_mobile/preference/color.dart';
import 'package:flutter/material.dart';
import 'input_assress_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 110,
        // toolbarHeight: 70,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'My Basket',
          style: TextStyle(color: MainColors.blackColor),
        ),
        centerTitle: true,

        // backgroundColor: MainColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: ListView(
          children: [
            buildItem(
              'Quinona Fruit Salad',
              'assets/images/food_bottom2.png',
              '2packs',
              'Rp 20.000',
            ),
            buildItem(
              'Quinona Fruit Salad',
              'assets/images/food_bottom1.png',
              '2packs',
              'Rp 20.000',
            ),
            buildItem(
              'Quinona Fruit Salad',
              'assets/images/recommend_1.png',
              '2packs',
              'Rp 20.000',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '60,000',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(width: 25),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return inputAddress();
                    },
                  );
                },
                child: Text('Checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildItem(
    String name,
    String imagepath,
    String quantity,
    String price,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffffaeb),
                  ),
                  child: Image.asset(imagepath, width: 65, height: 65),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        quantity,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(thickness: 0.5, color: MainColors.blackColor[400]),
        ],
      ),
    );
  }
}
