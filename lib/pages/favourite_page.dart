import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/listing_detail_page.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
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

          bottom: const TabBar(
            dividerColor: Colors.white,
            indicatorColor: Color(0xff966844),
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Yêu thích',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3F4F4F),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Tìm kiếm',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3F4F4F),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ListingDetailPage())
                    );
                  },
                  child: Card(
                    surfaceTintColor: Colors.white,
                    elevation: 5,
                    shadowColor: Color(hexColor('#303F4F4F')),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0, left: 12.0, bottom: 12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Image.network(
                                'https://file.vfo.vn/hinh/2014/4/biet-thu-dep-51.jpg',
                                height: 130,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(width: 12),
                          
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '24 tỷ 500 triệu',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff3F4F4F),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                                        
                                SizedBox(height: 12),
                                              
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.hotel_outlined),                        
                                        SizedBox(width: 5),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff3F4F4F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                                                                        
                                    SizedBox(width: 20),
                                    
                                    Row(
                                      children: [
                                        Icon(Icons.bathtub_outlined),                        
                                        SizedBox(width: 5),
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff3F4F4F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                                                                        
                                SizedBox(height: 30),
                                              
                                Text(
                                  'Xem thêm...',
                                   style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff966844),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(builder: (_) => const ListingDetailPage())
                      // );
                    },
                    child: Card(
                      surfaceTintColor: Color(hexColor('#103F4F4F')),
                      shadowColor: Color(hexColor('#303F4F4F')),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Bình Thạnh, Hồ Chí Minh',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff3F4F4F),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                        
                              const SizedBox(height: 8),
                              
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.file_upload_outlined, 
                                  color: Color(0xff966844)
                                ),
                                label: const Text(
                                  'Chia sẻ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff966844),
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                      ),
                    ),
                ),
                      ],
                    )
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

