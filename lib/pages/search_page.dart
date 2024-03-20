import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(hexColor('#3F4F4F'))),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: searchController,
            onChanged: (context) {},
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 12),
              hintStyle: TextStyle(color: Color(0xff3F4F4F)),
              border: InputBorder.none,
              hintText: 'Tìm nhà ở, căn hộ...'
            ),
          ),
        )
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