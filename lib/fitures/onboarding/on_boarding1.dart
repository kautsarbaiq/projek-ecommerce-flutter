import 'package:ecommerce_mobile/fitures/onboarding/on_boarding2.dart';
import 'package:ecommerce_mobile/preference/color.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 60,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 225, 225, 225),
                image: DecorationImage(
                  alignment: Alignment(0, 0.5),
                  image: AssetImage('assets/images/recommend_1.png'),
                  scale: 1.0,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 40,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
              decoration: BoxDecoration(color: Color(0xFFFFffff)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "We deliver the best and freshest fruit\n salad in town. Order for a combo\n today!!!",
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnBoarding2()),
                      );
                    },
                    child: Text("Let's Start"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
