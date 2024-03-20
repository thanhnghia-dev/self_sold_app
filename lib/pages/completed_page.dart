import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/main_page.dart';
import 'package:self_sold_app/pages/profile_signup_page.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({super.key});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20),

          const Image(
            image: AssetImage('assets/completed.png'),
            width: 280.54,
            height: 280.54
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.only(left: 26.0, right: 26.0),
            child: Text(
              'Xin chúc mừng tài khoản của bạn đã được tạo thành công',
              style: TextStyle(fontSize: 16, color: Color(hexColor('#3F4F4F'))),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 48),

          Padding(
            padding: const EdgeInsets.only(left: 78.5, right: 78.5),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const ProfileSignupPage()), 
                  (route) => false);
              },
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Color(hexColor('#3F4F4F')),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Text(
                    'Thiết lập hồ sơ của bạn',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          TextButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const MainPage()), 
                (route) => false);
            },
            child: const Text(
              'Quyết định sau',
              style: TextStyle(
                color: Color(0xff966844),
                fontSize: 16,
              ),
            ),
          ),
        ],
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
