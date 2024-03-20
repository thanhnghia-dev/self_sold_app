import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/login_page.dart';

class ChangePasswordCompleted extends StatefulWidget {
  const ChangePasswordCompleted({super.key});

  @override
  State<ChangePasswordCompleted> createState() => _ChangePasswordCompletedState();
}

class _ChangePasswordCompletedState extends State<ChangePasswordCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/completed.png'),
            width: 280.54,
            height: 280.54
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.only(left: 26.0, right: 26.0),
            child: Text(
              'Mật khẩu của bạn đã được thay đổi thành công',
              style: TextStyle(fontSize: 22, color: Color(hexColor('#3F4F4F'))),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 48),

          Padding(
            padding: const EdgeInsets.only(left: 78.5, right: 78.5),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const LoginPage()), 
                (route) => false);
              },
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Color(hexColor('#3F4F4F')),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Text(
                    'Tiếp tục',
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