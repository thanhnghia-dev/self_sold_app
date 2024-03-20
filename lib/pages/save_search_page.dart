import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/main_page.dart';

class SaveSearchPage extends StatefulWidget {
  const SaveSearchPage({super.key});

  @override
  State<SaveSearchPage> createState() => _SaveSearchPageState();
}

class _SaveSearchPageState extends State<SaveSearchPage> {
  final searchController = TextEditingController();

  void _saveButton() {
    String search = searchController.text;

    if (search.isNotEmpty) {
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (_) => const LoginPage()),
      // );
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/furniture3.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              color: Color(hexColor('#60172E2E')),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 150.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 26.0, right: 26.0),
                      child: Text(
                        'Lưu tìm kiếm?',
                        style: TextStyle(
                          fontSize: 25, 
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    const SizedBox(height: 22),

                    Form(
                      child: TextFormField(
                        controller: searchController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              width: 1.0,
                              color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              width: 1.0,
                              color: Colors.white),
                          ),
                          hoverColor: Colors.white,
                          hintText: 'Tên bạn tìm kiếm',
                          hintStyle: const TextStyle(color: Colors.white),
                      ),
                      obscureText: false,
                      ),
                    ),

                    const SizedBox(height: 98),

                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (_) => const MainPage()),(route) => false,
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text(
                                  'Hủy',
                                  style: TextStyle(
                                    color: Color(0xff3F4F4F),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      
                          const SizedBox(height: 16),
                      
                          GestureDetector(
                            onTap: _saveButton,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
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
                        ],
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
