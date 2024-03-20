import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/help_feedback_page.dart';
import 'package:self_sold_app/pages/profile_page.dart';
import 'package:self_sold_app/pages/sell_house_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(hexColor('#3F4F4F')),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            color: Color(hexColor('#3F4F4F')),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 25.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(
                      'https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/345606987_628901808760463_1055568646986243918_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=Ip924tRGgVYAX9dYTbC&_nc_oc=AQnHCkOf6kg33UnfPKJvaoEBpHAwzNcOdUb-VAPi-xYXJQFvEeecEew9pV7-8N_RF1BjT0pCDl-ioE4Lfi_B4o-c&_nc_ht=scontent.fsgn2-7.fna&oh=00_AfAFZYx7Eozu9qX7J-pvF1B5XiH97cD6I7MGYFWCyfEw5Q&oe=659B1DE8',
                    ),
                  ),
                  
                  SizedBox(width: 12),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Xin chào,',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                                     
                      SizedBox(height: 5),

                      Text(
                        'Lê Hoàng Gia Linh',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const ProfilePage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(hexColor('#103F4F4F')),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person_outline),
                            SizedBox(width: 8),
                            Text(
                              'Hồ sơ cá nhân',
                              style: TextStyle(
                                color: Color(0xff3F4F4F),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),

                  const SizedBox(height: 24),

                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const SellHousePage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(hexColor('#103F4F4F')),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.home_outlined),
                            SizedBox(width: 8),
                            Text(
                              'Bán nhà của bạn',
                              style: TextStyle(
                                color: Color(0xff3F4F4F),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              
                    const SizedBox(height: 24),

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const HelpFeedbackPage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(hexColor('#103F4F4F')),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.messenger_outline),
                            SizedBox(width: 8),
                            Text(
                              'Hỗ trợ và phản hồi',
                              style: TextStyle(
                                color: Color(0xff3F4F4F),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(builder: (_) => const SellHouse()),
                        // );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(hexColor('#103F4F4F')),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.report_outlined),
                            SizedBox(width: 8),
                            Text(
                              'Báo cáo sự cố',
                              style: TextStyle(
                                color: Color(0xff3F4F4F),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
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