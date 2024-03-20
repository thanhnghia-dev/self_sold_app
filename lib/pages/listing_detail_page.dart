import 'package:flutter/material.dart';

class ListingDetailPage extends StatefulWidget {
  const ListingDetailPage({super.key});

  @override
  State<ListingDetailPage> createState() => _ListingDetailPageState();
}

class _ListingDetailPageState extends State<ListingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (_) => const LoginPage()),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 5.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                    color: const Color(0xff3F4F4F),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Text(
                    'Liên hệ chủ nhà',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://file.vfo.vn/hinh/2014/4/biet-thu-dep-51.jpg',
              height: 350,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 37.0, right: 37.0, bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    label: const Text(
                      'Yêu thích',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff3F4F4F),
                      ),
                    ),
                  ),

                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.file_upload_outlined),
                    label: const Text(
                      'Chia sẻ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff3F4F4F),
                      ),
                    ),
                  ),

                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on_outlined),
                    label: const Text(
                      'Bản đồ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff3F4F4F),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Color(hexColor('#103F4F4F')),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '24 tỷ 500 triệu',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff966844),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 22),

                    const Row(
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
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 30),

                        Row(
                          children: [
                            Icon(Icons.bathtub_outlined),
                            SizedBox(width: 5),
                            Text(
                              '4',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff3F4F4F),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 30),

                        Row(
                          children: [
                            Icon(Icons.business_outlined),
                            SizedBox(width: 5),
                            Text(
                              '4',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff3F4F4F),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 17),
                    
                    const Text(
                      'Đường Phan Văn Trị, Phường 14, Bình Thạnh, Hồ Chí Minh',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff3F4F4F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(builder: (_) => const LoginPage()),
                          // );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 16.0, top: 19.0, bottom: 21.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'Nhận chỉ dẫn',
                                style: TextStyle(
                                  color: Color(0xff3F4F4F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),
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

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(color: Color(hexColor('#3F4F4F'))),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Đặc điểm bất động sản',
                    style: TextStyle(
                      color: Color(0xff966844),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 16),

                  Row(
                    children: [
                      Text(
                        'Kích thước: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        '5.5 x 25m',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Diện tích: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        '132 m2',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Số tầng: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        '4 tầng',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Số phòng ngủ: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        '5 phòng',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Số toilet: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        '4 phòng',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Hướng nhà: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        'Đông Nam',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Pháp lý: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        'Sổ đỏ/ Sổ hồng',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Nội thất: ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        'đầy đủ',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(color: Color(hexColor('#3F4F4F'))),
            ),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Thông tin mô tả',
                      style: TextStyle(
                        color: Color(0xff966844),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    SizedBox(height: 16),
              
                    Text(
                      'Thông tin mô tả về căn nhà',
                      style: TextStyle(
                        color: Color(0xff3F4F4F),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(color: Color(hexColor('#3F4F4F'))),
            ),

            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Image.network(
                        'https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/416280114_3173186859656559_7811545777054360283_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=fZ94N1NPOjEAX_-fcRZ&_nc_ht=scontent.fsgn2-4.fna&oh=00_AfAN96qzueJHTbPOuq6IuF1Uc277YMXgpBKYIn_WX3ylcw&oe=659C4C9C',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            'Bạn có câu hỏi?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff3F4F4F),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        
                        const Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text(
                            'Quan tâm?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff3F4F4F),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Vũ Nguyễn Như Anh',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff966844),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        
                        const Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text(
                            'Chủ nhà',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff3F4F4F),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(builder: (_) => const LoginPage()),
                              // );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16.0, top: 19.0, bottom: 21.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3F4F4F),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Liên hệ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
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
