import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA451),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(color: Color(0xffFFA451)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 24.0),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.arrow_back_ios, size: 20),
                                Text('Go back'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Image.asset("assets/images/recommend_1.png", width: 180),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              padding: EdgeInsets.only(top: 30, left: 24, right: 24),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Quinoa Fruit Salad",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xffFFFFFF),
                              border: Border.all(color: Color(0xff111111)),
                            ),
                            child: Icon(Icons.remove),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("1", style: TextStyle(fontSize: 22)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0x73FFA551),
                            ),
                            child: Icon(Icons.add, color: Color(0xffFFA451)),
                          ),
                        ],
                      ),

                      Text(
                        "Rp 20.000",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Divider(color: Colors.grey, thickness: 0.5),
                  SizedBox(height: 30),
                  Text(
                    "One Pack Contains:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
