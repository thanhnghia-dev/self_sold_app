import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/selection_page.dart';

class ProfileSignupPage extends StatefulWidget {
  const ProfileSignupPage({super.key});

  @override
  State<ProfileSignupPage> createState() => _ProfileSignupPageState();
}

class _ProfileSignupPageState extends State<ProfileSignupPage> {
  final nameController = TextEditingController(); final screenNameController = TextEditingController();
  final dobController = TextEditingController(); final streetController = TextEditingController();
  final aptSuiteController = TextEditingController(); final cityController = TextEditingController();
  final provinceController = TextEditingController(); final zipCodeController = TextEditingController();

  void _saveButton() {
    String name = nameController.text; String screenName = screenNameController.text;
    String dob = dobController.text; String street = streetController.text;
    String aptSuite = aptSuiteController.text; String city = cityController.text;
    String province = provinceController.text; String zipCode = zipCodeController.text;

    if (name.isNotEmpty && screenName.isNotEmpty && dob.isNotEmpty && street.isNotEmpty
    && aptSuite.isNotEmpty && city.isNotEmpty && province.isNotEmpty && zipCode.isNotEmpty) {
      // Navigator.of(context).pushAndRemoveUntil(
      //   MaterialPageRoute(builder: (_) => const SelectionPage()), 
      //   (route) => false);
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
          'Cá nhân',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),

              const Text(
                'Thông tin cá nhân',
                style: TextStyle(
                  color: Color(0xff966844),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Họ tên',
                        ),
                        
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: screenNameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Tên hiển thị',
                        ),
                        
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: dobController,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Ngày sinh',
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              const Divider(color: Color(0xff3F4F4F)),

              const SizedBox(height: 12),

              const Text(
                'Địa chỉ',
                style: TextStyle(
                  color: Color(0xff966844),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: aptSuiteController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Số nhà',
                        ),
                        
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: streetController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Đường',
                        ),
                        
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: cityController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Thành phố',
                        ),
                        
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: provinceController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Tỉnh',
                        ),
                        
                      ),
                      
                      const SizedBox(height: 20),

                      TextFormField(
                        controller: zipCodeController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Mã Zip/postal',
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: _saveButton,
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Color(hexColor('#3F4F4F')),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        'Lưu',
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

              const SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const SelectionPage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        'Hủy',
                        style: TextStyle(
                          color: Color(0xff966844),
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
    );
  }
}

int hexColor(String color) {
  String newColor = "0xff$color";
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
