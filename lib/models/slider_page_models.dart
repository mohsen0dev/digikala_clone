import 'package:digikala_clone/constans.dart';
import 'package:flutter/material.dart';

class SliderPage {
  final String? title, text1, text2, text0, src;
  final VoidCallback pressl;

  SliderPage(
      {required this.title,
      required this.text1,
      required this.text2,
      this.text0 = "",
      required this.pressl,
      required this.src});
}

List<SliderPage> sliderPage = [
  SliderPage(
      title: 'شکلات و کرم شکلات',
      text1: 'تنوعی ازطعم',
      text2: 'خرید',
      text0: 'تخفیف تا %40',
      pressl: () {
        print(DateTime.now().hour);
      },
      src: '${constans.scrPic}baners/banner_1.jpg'),
  SliderPage(
      title: 'جنگ با آلودگی',
      text1: 'دشمن سر سخت لکه ها',
      text2: 'مشاهده',
      pressl: () {
        print('2');
      },
      src: '${constans.scrPic}baners/banner_2.jpg'),
  SliderPage(
      text0: 'تخفیف تا %50',
      title: 'بازگشت به مدرسه',
      text1: 'مبارزه باویروس ها',
      text2: 'خرید',
      pressl: () {
        print('3');
      },
      src: '${constans.scrPic}baners/banner_3.jpg'),
  SliderPage(
      title: 'نظافت سر و صورت',
      text1: 'شامپو سر و صورت',
      text2: 'مشاهده',
      pressl: () {},
      src: '${constans.scrPic}baners/banner_4.jpg'),
  SliderPage(
      text0: 'تخفیف تا %70',
      title: 'بازگشت به مدسه',
      text1: 'لوازم مورد نیاز مدرسه',
      text2: 'بزن بریم',
      pressl: () {},
      src: '${constans.scrPic}baners/banner_5.jpg'),
];
