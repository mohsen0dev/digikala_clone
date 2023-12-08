import 'package:digikala_clone/constans.dart';
import 'package:flutter/material.dart';

class AdsMindModel {
  final String title, gift, text, txtBotun, src;
  final VoidCallback press;
  AdsMindModel({
    required this.gift,
    required this.src,
    required this.title,
    required this.text,
    required this.txtBotun,
    required this.press,
  });
}

List<AdsMindModel> asdMindModel = [
  AdsMindModel(
    gift: '',
    title: 'نشان\nمخصوص تو',
    text: 'عطر خودت رو پیدا کن',
    txtBotun: 'انتخاب',
    press: () {},
    src: constans.scrPic + 'baners/2.png',
  ),
  AdsMindModel(
    gift: '',
    title: 'سالنامه و تقویم سال 1402',
    text: '',
    txtBotun: '',
    press: () {},
    src: constans.scrPic + 'baners/1.png',
  ),
  AdsMindModel(
    gift: '',
    title: 'ابزار حفظ \nسلامت\nدر خانه',
    text: '',
    txtBotun: '',
    press: () {},
    src: constans.scrPic + 'baners/4.png',
  ),
  AdsMindModel(
    title: 'انواع ریش تراش و ماشین اصلاح',
    gift: 'تخفیف تا %30',
    text: '',
    txtBotun: 'خرید',
    press: () {},
    src: constans.scrPic + 'baners/3.png',
  ),
];
