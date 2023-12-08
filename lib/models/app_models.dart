import 'package:digikala_clone/constans.dart';

class AppModels {
  final String text, src;

  AppModels({required this.text, required this.src});
}

List<AppModels> appModel = [
  AppModels(
      text: 'دیجی کالا جت', src: '${constans.scrPic}app/digikala_jet.png'),
  AppModels(
      text: 'حراج دیجی استایل',
      src: '${constans.scrPic}app/haraj_digi_style.png'),
  AppModels(text: 'خرید اقساطی', src: '${constans.scrPic}app/digi_pay.png'),
  AppModels(text: 'دیجی کلاب', src: '${constans.scrPic}app/digi_club.png'),
  AppModels(
      text: 'دیجی کالا مهر', src: '${constans.scrPic}app/digikala_mehr.png'),
  AppModels(text: 'ماموریت ها', src: '${constans.scrPic}app/mamoriyat_ha.png'),
  AppModels(text: 'دیجی پلاس', src: '${constans.scrPic}app/digi_plus.png'),
];
