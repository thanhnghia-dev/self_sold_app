import 'package:flutter/material.dart';
import 'package:email_otp/email_otp.dart';
import 'package:self_sold_app/pages/verification_page.dart';

class ResetPassPage extends StatefulWidget {
  const ResetPassPage({super.key});

  @override
  State<ResetPassPage> createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {
  final emailController = TextEditingController();
  EmailOTP myauth = EmailOTP();

  void _continueButton() async {
    String email = emailController.text;

    if (email.isNotEmpty) {
      myauth.setConfig(
        appEmail: "contact@hdevcoder.com",
        appName: "Email OTP",
        userEmail: email,
        otpLength: 4,
        otpType: OTPType.digitsOnly);
        if (await myauth.sendOTP() == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("OTP đã được gửi đến email của bạn"),
        ));
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => VerificationPage(myauth: myauth))
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Vui lòng điền email'),
          ),
        );
      }
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
                    'Quên mật khẩu',
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

                  GestureDetector(
                    onTap: _continueButton,
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(hexColor('#3F4F4F')),
                        borderRadius: BorderRadius.circular(50)
                      ),
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