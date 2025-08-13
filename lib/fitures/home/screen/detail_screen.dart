import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isFavorite = false;
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
                        padding: const EdgeInsets.only(top: 36, left: 22),
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
                                Text('Go Back'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/recommend_2.png',
                    width: 150,
                    height: 180,
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 40, left: 24, right: 24),
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Quinoa Fruit Salad',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffFFFFFF),
                                border: Border.all(color: Color(0xff1111111)),
                              ),
                              child: Center(child: Icon(Icons.remove)),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                              ),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffFFF2E7),
                                border: Border.all(color: Color(0xff1111111)),
                              ),
                              child: Center(child: Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ),

                      Text(
                        'Rp. 20,000',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),
                  Divider(
                    color: Color(0xffBDBDBD).withOpacity(0.50),
                    thickness: 1,
                  ),
                  SizedBox(height: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'One Pack Contains:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 153,
                        decoration: BoxDecoration(color: Color(0xffFFA451)),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                    style: TextStyle(height: 2),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Color(0xffBDBDBD).withOpacity(0.50),
                    thickness: 1,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                    style: TextStyle(height: 2),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // 3. Panggil setState untuk mengubah status
                          setState(() {
                            _isFavorite = !_isFavorite;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffFFF7F0),
                          ),
                          child: Icon(
                            _isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border_rounded,
                            size: 24,
                            color: _isFavorite
                                ? Colors.orange
                                : Color(0xffFFA451),
                          ),
                        ),
                      ),
                      SizedBox(width: 60),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Add to Basket'),
                        ),
                      ),
                    ],
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
