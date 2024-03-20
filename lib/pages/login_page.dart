import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/reset_password_page.dart';
import 'package:self_sold_app/pages/selection_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login(String email, String password) async {
    
  }

  void _logInButton() async {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const SelectionPage()), 
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
                    'Đăng nhập',
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
                  
                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Color(hexColor('#3F4F4F')),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                          
                          const Text(
                            'Lưu mật khẩu',
                            style: TextStyle(
                              color: Color(0xff3F4F4F),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const ResetPassPage()),
                          );
                        },
                        child: const Text(
                          'Quên mật khẩu?',
                          style: TextStyle(
                            color: Color(0xff966844),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),

                  GestureDetector(
                    onTap: _logInButton,
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(hexColor('#3F4F4F')),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Center(
                        child: Text(
                          'Đăng nhập',
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
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const SelectionPage())
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