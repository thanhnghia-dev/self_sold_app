import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/customer_support_page.dart';

class HelpFeedbackPage extends StatefulWidget {
  const HelpFeedbackPage({super.key});

  @override
  State<HelpFeedbackPage> createState() => _HelpFeedbackPageState();
}

class _HelpFeedbackPageState extends State<HelpFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(hexColor('#3F4F4F')),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Hỗ trợ và phản hồi',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CustomerSupportPage()),
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
                        'Hỗ trợ khách hàng',
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
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (_) => const HelpFeedbackPage()),
                  // );
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
                        'Đánh giá ứng dụng',
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
