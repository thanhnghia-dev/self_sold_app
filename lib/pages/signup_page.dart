import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/completed_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confPasswordController = TextEditingController();

  Future<void> login(String email, String password) async {
    
  }

  void _signUpButton() async {
    String email = emailController.text;
    String phone = phoneController.text;
    String password = passwordController.text;
    String confPassword = confPasswordController.text;

    if (email.isNotEmpty && phone.isNotEmpty && password.isNotEmpty && confPassword.isNotEmpty) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const CompletedPage()),
        (route) => false);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng điền đầy đủ thông tin'),
        ),
      );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/logo_app.png', height: 150, width: 150),
                  
                  const SizedBox(height: 30),

                  const Text(
                    'Đăng ký',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3F4F4F),
                    ),
                  ),
                  
                  const SizedBox(height: 30),

                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                      ),
                      labelText: 'Email',
                    ),
                    obscureText: false,
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                      ),
                      labelText: 'Số điện thoại',
                    ),
                    obscureText: false,
                  ),

                  const SizedBox(height: 20),
                  
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                      ),
                      labelText: 'Mật khẩu',
                    ),
                    obscureText: true,
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: confPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                      ),
                      labelText: 'Nhập lại mật khẩu',
                    ),
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),

                  GestureDetector(
                    onTap: _signUpButton,
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(hexColor('#3F4F4F')),
                        borderRadius: BorderRadius.circular(50)
                      ),
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

                  const SizedBox(height: 20),

                  const Text(
                    '--- Hoặc ---',
                    style: TextStyle(
                      color: Color(0xff3F4F4F),
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Đăng nhập Google'),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(hexColor('#3F4F4F'))),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/logo_google.png'),
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Tiếp tục bằng Google',
                            style: TextStyle(
                              color: Color(0xff966844),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Đăng nhập Facebook'),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(hexColor('#3F4F4F'))),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/logo_facebook.png'),
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Tiếp tục bằng Facebook',
                            style: TextStyle(
                              color: Color(0xff966844),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              )
            ),
          ),
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