import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/inbox_page.dart';
import 'package:self_sold_app/pages/favourite_page.dart';
import 'package:self_sold_app/pages/home_page.dart';
import 'package:self_sold_app/pages/menu_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const HomePage(),
    const FavouritePage(),
    const InboxPage(),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        selectedItemColor: const Color(0xff966844),
        unselectedItemColor: const Color(0xff3F4F4F),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Trang chủ',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Yêu thích',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Tin nhắn',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
