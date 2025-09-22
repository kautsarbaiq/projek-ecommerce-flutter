import 'package:ecommerce_mobile/fitures/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  final _nameController = TextEditingController();

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
                  image: AssetImage('assets/images/recommend_2.png'),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What is your firstname?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter your first name',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String nameController = _nameController.text;
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(name: nameController),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text("Start Ordering"),
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
