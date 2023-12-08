import 'package:digikala_clone/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductModels {
  late String title,
      garanti,
      froshande,
      ferestande,
      anbar,
      fiOrginal,
      fiOf,
      src;
  ProductModels({
    this.src = '${constans.app}not.png',
    required this.title,
    this.garanti = 'گارانتی اصالت و سلامت فیزیکی کالا',
    this.froshande = 'دیجی کالا',
    this.anbar = 'موجود در انبار دیجی کالا',
    this.ferestande = 'ارسال دیجی کالا',
    required this.fiOrginal,
    this.fiOf = '',
  });
}

List<ProductModels> productItem = [
  ProductModels(
    title: 'آچار بکس تی مدل rn8 سایز 8 میلی متر',
    fiOrginal: '1,000',
    src: '${constans.mobaile}samsung_1.jpeg',
  ),
  ProductModels(
      title: 'گوشی سامسونگ',
      fiOrginal: '50,000',
      ferestande: 'ارسال دیجی کالا در 1 روز آینده',
      src: '${constans.mobaile}samsung_2.jpeg'),
  ProductModels(
      title: 'آچار بکس تی مدل rn میلی متر',
      fiOrginal: '120000',
      fiOf: '1,000,000',
      ferestande: 'ارسال دیجی کالا در 1 روز آینده',
      src: '${constans.mobaile}samsung_3.jpeg'),
].obs;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              ProductModels newProduct =
                  ProductModels(title: 'title', fiOrginal: '1500');
              productItem.add(newProduct);
              // onAddProduct(newProduct);
            },
            child: Text('Add Product'),
          ),
        ),
      ),
    );
  }
}
