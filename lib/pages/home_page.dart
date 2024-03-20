import 'package:flutter/material.dart';
import 'package:self_sold_app/pages/listing_detail_page.dart';
import 'package:self_sold_app/pages/save_search_page.dart';
import 'package:self_sold_app/pages/search_page.dart';

List<String> list = <String>['Mới nhất', 'Cũ nhất', 'Giá thấp nhất', 'Giá cao nhất'];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isIconChanged = false;
  String dropdownValue = list.first;
  
  void favouriteButton() {
    if (!isIconChanged) {
      setState(() {
        isIconChanged = !isIconChanged;
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Đã thêm vào yêu thích"),
      ));
    } else {
      setState(() {
        isIconChanged = !isIconChanged;
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Đã xóa khỏi yêu thích"),
      ));
    }
  }

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

        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.location_on_outlined),
            label: const Text(
              'Bản đồ',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff3F4F4F),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Divider(color: Color(hexColor('#A1B2B2'))),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const SaveSearchPage()));
                  },
                  icon: const Icon(Icons.bookmark_outline),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SearchPage()),
                    );
                  },
                  child: Container(
                    width: 280,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(hexColor('#3F4F4F'))),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 5),
                            Text(
                              'Tìm kiếm nhà ở, căn hộ...',
                              style: TextStyle(
                                color: Color(0xff3F4F4F),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    '22 danh mục',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff3F4F4F),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                Row(
                  children: [
                    const Icon(Icons.filter_list),
                    const SizedBox(width: 5),
                    
                    DropdownButton<String>(
                      value: dropdownValue,
                      elevation: 16,
                      style: const TextStyle(color: Color(0xff3F4F4F)),
                      underline: Container(
                        color: Colors.white,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

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
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const ListingDetailPage()));
                        },
                        child: Card(
                          surfaceTintColor: Colors.white,
                          elevation: 5,
                          shadowColor: Color(hexColor('#303F4F4F')),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12.0, left: 12.0, bottom: 12.0),
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

                                        SizedBox(width: 15),

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

                              IconButton(
                                onPressed: favouriteButton,
                                icon: isIconChanged ? const Icon(Icons.favorite, color: Colors.red) : const Icon(Icons.favorite_outline),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
