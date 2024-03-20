import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/change_password_completed.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void _saveButton() {
    String currentPassword = currentPasswordController.text;
    String newPassword = newPasswordController.text;
    String rePassword = confirmPasswordController.text;

    if (currentPassword.isNotEmpty && newPassword.isNotEmpty && rePassword.isNotEmpty) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const ChangePasswordCompleted()),
      );
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
        backgroundColor: Color(hexColor('#3F4F4F')),
        centerTitle: true,
        title: const Text(
          'Thay đổi mật khẩu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: currentPasswordController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                      ),
                      labelText: 'Mật khẩu hiện tại',
                    ),
                    obscureText: true,
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'Mật khẩu hiện tại đã liên kết với tài khoản của bạn',
                    style: TextStyle(
                      color: Color(0xff3F4F4F),
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: newPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                      ),
                      labelText: 'Mật khẩu mới',
                    ),
                    obscureText: true,
                  ),
                  
                  const SizedBox(height: 5),

                  const Text(
                    'Mật khẩu phải bao gồm:\n'
                    '  * 8-20 ký tự\n'
                    '  * Ít nhất một chữ số\n'
                    '  * Ít nhất một chữ viết hoa\n'
                    '  * Ít nhất một ký tự đặc biệt (e.g. !@#&%)\n'
                    '  * Không khoảng trắng',
                    style: TextStyle(
                      color: Color(0xff3F4F4F),
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                      ),
                      labelText: 'Nhập lại mật khẩu mới',
                    ),
                    obscureText: true,
                  ),
                  
                  const SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.only(left: 78.5, right: 78.5),
                    child: GestureDetector(
                      onTap: _saveButton,
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(hexColor('#3F4F4F')),
                          borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              'Lưu thay đổi',
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