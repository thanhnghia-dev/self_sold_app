import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/claim_house_page.dart';

class SellHousePage extends StatefulWidget {
  const SellHousePage({super.key});

  @override
  State<SellHousePage> createState() => _SellHousePageState();
}

class _SellHousePageState extends State<SellHousePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(hexColor('#3F4F4F')),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Bán nhà của bạn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/logo_app.png'),
              width: 100,
              height: 100,
            ),
        
            const SizedBox(height: 16),
        
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26.0),
              child: Text(
                'Bạn có muốn bán nhà của bạn không?',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(hexColor('#966844')),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        
            const SizedBox(height: 10),
        
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26.0),
              child: Text(
                'Yêu cầu ngôi nhà của bạn để theo dõi giá trị của nó, xem thị trường địa phương và hơn thế nữa.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(hexColor('#3F4F4F')),
                ),
                textAlign: TextAlign.center,
              ),
            ),
        
            const SizedBox(height: 36),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ClaimHousePage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Color(hexColor('#103F4F4F')),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sử dụng vị trí của bạn',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),
        
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
        
            const SizedBox(height: 24),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ClaimHousePage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Color(hexColor('#103F4F4F')),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nhập địa chỉ nhà',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),
                      
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
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
