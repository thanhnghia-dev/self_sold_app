import 'package:flutter/material.dart';

class ClaimHousePage extends StatefulWidget {
  const ClaimHousePage({super.key});

  @override
  State<ClaimHousePage> createState() => _ClaimHousePageState();
}

class _ClaimHousePageState extends State<ClaimHousePage> {
  final streetController = TextEditingController(); final aptSuiteController = TextEditingController();
  final cityController = TextEditingController(); final provinceController = TextEditingController();
  final zipCodeController = TextEditingController(); final sizeController = TextEditingController();
  final areaController = TextEditingController(); final floorController = TextEditingController();
  final bedroomController = TextEditingController(); final toiletController = TextEditingController();
  final dimensionController = TextEditingController(); final policyController = TextEditingController();
  final furnitureController = TextEditingController(); final priceController = TextEditingController();
  final descriptionController = TextEditingController();

  void _saveButton() {
    String street = streetController.text; String aptSuite = aptSuiteController.text;
    String city = cityController.text; String province = provinceController.text;
    String zipCode = zipCodeController.text; String size = sizeController.text;
    String area = areaController.text; String floor = floorController.text;
    String bedroom = bedroomController.text; String toilet = toiletController.text;
    String dimension = dimensionController.text; String policy = policyController.text;
    String furniture = furnitureController.text; String price = priceController.text;
    String description = descriptionController.text;

    if (street.isNotEmpty && aptSuite.isNotEmpty && city.isNotEmpty && province.isNotEmpty
     && zipCode.isNotEmpty && size.isNotEmpty && area.isNotEmpty && floor.isNotEmpty
      && bedroom.isNotEmpty && toilet.isNotEmpty && dimension.isNotEmpty && policy.isNotEmpty
       && furniture.isNotEmpty && price.isNotEmpty && description.isNotEmpty) {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(hexColor('#3F4F4F')),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Bán nhà của bạn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: _saveButton, 
              icon: const Icon(
                Icons.save_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
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
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Số nhà',
                          labelText: 'Số nhà',
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: streetController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Đường',
                          labelText: 'Đường',
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: cityController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Thành phố',
                          labelText: 'Thành phố',
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: provinceController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Tỉnh',
                          labelText: 'Tỉnh',
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: zipCodeController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Mã Zip/postal',
                          labelText: 'Zip Code',
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
                'Đặc điểm bất động sản',
                style: TextStyle(
                  color: Color(0xff966844),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (_) => const LoginPage()),
                  // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0, top: 5.0),
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: const Color(0xff3F4F4F),
                          borderRadius: BorderRadius.circular(50)),
                          child: const Row(
                            children: [
                              Icon(Icons.add, size: 24, color: Colors.white),
                              SizedBox(width: 8),
                              Center(
                                child: Text(
                                  'Bằng chứng sở hữu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),

                  GestureDetector(
                    onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (_) => const LoginPage()),
                  // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0, top: 5.0),
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: const Color(0xff3F4F4F),
                          borderRadius: BorderRadius.circular(50)),
                          child: const Row(
                            children: [
                              Icon(Icons.add, size: 24, color: Colors.white),
                              SizedBox(width: 8),
                              Center(
                                child: Text(
                                  'Thêm hình ảnh',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: sizeController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'ngang x dài(m)',
                          labelText: 'Kích thước',
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: areaController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Diện tích',
                          labelText: 'Diện tích',
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: floorController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Số tầng',
                          labelText: 'Tầng',
                        ),
                      ),
                      
                      const SizedBox(height: 20),

                      TextFormField(
                        controller: bedroomController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Số phòng ngủ',
                          labelText: 'Phòng ngủ',
                        ),
                      ),
                      
                      const SizedBox(height: 20),

                      TextFormField(
                        controller: toiletController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Số toilet',
                          labelText: 'Toilet',
                        ),
                      ),
                      
                      const SizedBox(height: 20),

                      TextFormField(
                        controller: dimensionController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Hướng nhà',
                          labelText: 'Hướng nhà'
                        ),
                      ),

                      
                      const SizedBox(height: 20),

                      TextFormField(
                        controller: policyController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Pháp lý',
                          labelText: 'Pháp lý'
                        ),
                      ),

                      
                      const SizedBox(height: 20),

                      TextFormField(
                        controller: furnitureController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Nội thất',
                          labelText: 'Nội thất'
                        ),
                      ),
                      
                      const SizedBox(height: 20),

                      TextFormField(
                        controller: priceController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Giá bán',
                          labelText: 'Giá bán',
                        ),
                      ),
                      
                      const SizedBox(height: 5),

                      const Text(
                        'Giá căn nhà bạn muốn bán.',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 13,
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
                'Thông tin mô tả',
                style: TextStyle(
                  color: Color(0xff966844),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     TextFormField(
                        controller: descriptionController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(hexColor('#3F4F4F')))),
                          hintText: 'Nhập thông tin mô tả',
                          labelText: 'Thông tin mô tả',
                        ),
                    ),
                      
                    const SizedBox(height: 5),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Hãy mô tả ngắn gọn căn nhà với những đặc điểm nổi bật.',
                        style: TextStyle(
                          color: Color(0xff3F4F4F),
                          fontSize: 13,
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
    );
  }
}

int hexColor(String color) {
  String newColor = "0xff$color";
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
