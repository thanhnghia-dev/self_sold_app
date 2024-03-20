import 'package:flutter/material.dart';

class CustomerSupportPage extends StatefulWidget {
  const CustomerSupportPage({super.key});

  @override
  State<CustomerSupportPage> createState() => _CustomerSupportPageState();
}

class _CustomerSupportPageState extends State<CustomerSupportPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final contentController = TextEditingController();

  void _sendButton() async {
    String email = emailController.text;
    String name = nameController.text;
    String content = contentController.text;

    if (email.isNotEmpty && name.isNotEmpty && content.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nội dung của bạn đã được gửi'),
        ),
      );
      emailController.clear();
      nameController.clear();
      contentController.clear();
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Hỗ trợ khách hàng',
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
                'Xin chào khách hàng,',
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
                'Chúng tôi mong nhận được phản hồi cũng như vấn đề từ bạn trên ứng dụng của chúng tôi. '
                'Bạn có thể cung cấp càng nhiều chi tiết càng tốt.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(hexColor('#3F4F4F')),
                ),
                textAlign: TextAlign.center,
              ),
            ),
        
            const SizedBox(height: 36),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                        ),
                        labelText: 'Họ tên',
                      ),
                      obscureText: false,
                    ),

                    const SizedBox(height: 20),

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

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TextFormField(
                          controller: contentController,
                          decoration: InputDecoration(
                            hintText: 'Nhập nội dung',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Color(hexColor('#3F4F4F')))
                            ),
                            suffixIcon: IconButton(
                              onPressed: _sendButton, 
                              icon: const Icon(Icons.send),
                            ),
                          ),
                        ),
                      ),
                    ),
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
