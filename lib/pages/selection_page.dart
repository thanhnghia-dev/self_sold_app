import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/main_page.dart';
import 'package:self_sold_app/pages/sell_house_page.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/furniture2.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              color: Color(hexColor('#95FFFFFF')),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 150.0),
                child: Column(
                  children: [
                    const Image(
                        image: AssetImage('assets/logo_app.png'),
                        width: 160,
                        height: 160),

                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                      child: Text(
                        'Sự lựa chọn số một cho gia chủ và khách hàng để tiết kiệm chi phí bất động sản',
                        style: TextStyle(
                            fontSize: 18, color: Color(hexColor('#3F4F4F'))),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    const SizedBox(height: 62),

                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                      child: Text(
                        'Bạn đang tìm kiếm gì hôm nay?',
                        style: TextStyle(
                            fontSize: 23, color: Color(hexColor('#3F4F4F'))),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    const SizedBox(height: 40),

                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) => const SellHousePage()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
                              decoration: BoxDecoration(
                                  color: Color(hexColor('#3F4F4F')),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text(
                                  'Bán',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      
                          const SizedBox(width: 20),
                      
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) => const MainPage()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
                              decoration: BoxDecoration(
                                  color: Color(hexColor('#966844')),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text(
                                  'Mua',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

int hexColor(String color) {
  String newColor = "0xff$color";
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
