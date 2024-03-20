import 'package:flutter/material.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/services.dart';
import 'package:self_sold_app/pages/new_password_page.dart';
import 'package:self_sold_app/pages/reset_password_page.dart';

class Otp extends StatelessWidget {
  const Otp({
    Key? key,
    required this.otpController,
  }) : super(key: key);
  final TextEditingController otpController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        controller: otpController,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        onSaved: (value) {},
      ),
    );
  }
}

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key, required this.myauth}) : super(key: key);
  final EmailOTP myauth;

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final otp1Controller = TextEditingController();
  final otp2Controller = TextEditingController();
  final otp3Controller = TextEditingController();
  final otp4Controller = TextEditingController();

  String otpController = "1234";

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
            padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Mã xác thực',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3F4F4F),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.0),
                    child: Text(
                      'Vui lòng nhập mã xác thực được gửi đến email đã được đăng ký',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff3F4F4F),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Otp(
                        otpController: otp1Controller,
                      ),
                      Otp(
                        otpController: otp2Controller,
                      ),
                      Otp(
                        otpController: otp3Controller,
                      ),
                      Otp(
                        otpController: otp4Controller,
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Không thấy mã OTP?",
                        style: TextStyle(fontSize: 20),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => const ResetPassPage()),
                          );
                        },
                        child: const Text(
                          "Gửi lại",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff966844)
                          ),
                      ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () async {
                      if (await widget.myauth.verifyOTP(
                        otp: otp1Controller.text +
                        otp2Controller.text +
                        otp3Controller.text +
                        otp4Controller.text) == true) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const NewPasswordPage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("OTP không hợp lệ"),
                        ));
                      }
                    },
                    child: const Text(
                      "Xác nhận",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff3F4F4F),
                      ),
                    ),
                  )
                ],
              ),
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
