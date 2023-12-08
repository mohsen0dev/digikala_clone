import 'package:flutter/cupertino.dart';

class HistoryMy {
  final String title;
  final VoidCallback? press = () {};
  HistoryMy({
    press,
    required this.title,
  });
}

List<HistoryMy> HistoryMyItem = [
  HistoryMy(title: 'موبایل ساسمونگ'),
  HistoryMy(title: 'کاور گوشی'),
  HistoryMy(title: 'آچار بکس'),
  HistoryMy(title: 'poco x4'),
  HistoryMy(title: 'دریل شارژی'),
];
List<HistoryMy> HistoryHotItem = [
  HistoryMy(title: 'دکوری برنجی'),
  HistoryMy(title: 'دریل ماکیتا'),
  HistoryMy(title: 'هندزفری بیسیم'),
  HistoryMy(title: 'اسپیکر لیتو'),
  HistoryMy(title: 'مانیتور 27'),
];
