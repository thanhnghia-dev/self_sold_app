import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/login_page.dart';
import 'package:self_sold_app/pages/signup_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/furniture1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              color: Color(hexColor('#95FFFFFF')),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Column(
                  children: [
                    const SizedBox(height: 18),

                    const Image(
                      image: AssetImage('assets/logo_app.png'), 
                      width: 100, 
                      height: 100
                    ),
                
                    const SizedBox(height: 16),
                
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                      child: Text(
                        'Sự lựa chọn số một cho gia chủ và khách hàng để tiết kiệm chi phí bất động sản',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(hexColor('#3F4F4F'))
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    
                    const SizedBox(height: 62),
                
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const SignupPage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(hexColor('#3F4F4F')), borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              'Đăng ký',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                                
                    const SizedBox(height: 12),
                
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              'Đăng nhập',
                              style: TextStyle(
                                color: Color(0xff3F4F4F),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
               
                    const SizedBox(height: 38),
                
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                      child: Text(
                        'Để tiếp tục, bạn đồng ý với Điều khoản dịch vụ của Self-Sold'
                        ' và xác nhận rằng bạn đã đọc Chính sách quyền riêng tư của chúng tôi.',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(hexColor('#3F4F4F'))
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                                   
                    const SizedBox(height: 110),
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