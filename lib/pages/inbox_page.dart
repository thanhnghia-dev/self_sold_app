import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/messenger_page.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Text(
              'Self-',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff3F4F4F),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sold',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff966844),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MessengerPage()),
            );
          },
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/2593/2593468.png'),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hỗ trợ khách hàng',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3F4F4F),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Thông tin của đội CSKH...',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  Text(
                    '04:21PM',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black12),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff3F4F4F),
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }
}
