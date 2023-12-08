import 'package:digikala_clone/constans.dart';
import 'package:digikala_clone/screen/mesege_page/mesege.dart';
import 'package:digikala_clone/screen/setings_page/setings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDigikalaPage extends StatelessWidget {
  const MyDigikalaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: size.width,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  color: Colors.white,
                  width: size.width,
                  //height: 250,
                  child: Column(
                    children: [
                      //! appBar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SetingPage()));
                            },
                            icon: Icon(Icons.settings_outlined),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MessagePage(),
                                  ));
                            },
                            icon: Icon(Icons.notifications_none_outlined),
                          ),
                        ],
                      ),
                      //! profile name
                      Text(
                        'محسن فرجی',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '09361231111',
                        style: TextStyle(fontSize: 13, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //! ماموریت و کیف پول
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      height: 40,
                                      fit: BoxFit.cover,
                                      'assets/images/svg/club.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('777'),
                                          Text(
                                            ' امتیاز',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black38),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      InkWell(
                                          onTap: () {},
                                          child: Text(
                                            'ماموریت های دیجی کلاب >',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          )),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset(
                                  height: 40,
                                  fit: BoxFit.cover,
                                  'assets/images/svg/profile.svg'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('فعال سازی کیف پول')
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //! space
                SizedBox(height: 7),
                //! دیجی کلاب و تماس با ما
                Container(
                  color: Colors.white,
                  width: size.width,
                  height: 110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconTextWidget(
                        icon: Icons.accessibility_new_outlined,
                        title: 'دیجی کلاب',
                        bgColor: Colors.cyan.shade700,
                      ),
                      IconTextWidget(
                        icon: Icons.headset_mic_outlined,
                        title: 'تماس با ما',
                        bgColor: Colors.red.shade800,
                      ),
                    ],
                  ),
                ),
                //! space
                SizedBox(height: 7),
                //! سفارش های من
                Container(
                  color: Colors.white,
                  width: size.width,
                  //height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'سفارش های من',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 90,
                                height: 80,
                                child: svgText(
                                  title: 'در انتظار پرداخت',
                                  src: 't1.svg',
                                  count: '',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 90,
                                height: 80,
                                child: svgText(
                                  title: 'در حال پردازش',
                                  src: 'proces.svg',
                                  count: '1',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 90,
                                height: 80,
                                child: svgText(
                                  title: 'تحویل شده',
                                  src: 'deliverd.svg',
                                  count: '55',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 90,
                                height: 80,
                                child: svgText(
                                  title: 'لغو شده',
                                  src: 'delll.svg',
                                  count: '2',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 90,
                                height: 80,
                                child: svgText(
                                  title: 'مرجوع شده',
                                  src: 'back.svg',
                                  count: '5',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //! تبلیغ لاکی باکس
                Container(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    width: size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(constans.gift + '1.jpg')),
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'digiclub',
                          style: TextStyle(
                            fontFamily: 'morabba',
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'لاکی باکس',
                          style: TextStyle(
                              fontFamily: 'morabba',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12),
                        ),
                        SizedBox(
                          width: 140,
                          child: Text(
                              style: TextStyle(
                                wordSpacing: -1,
                                color: Colors.white,
                              ),
                              softWrap: true,
                              'جعبه رو باز کن، کد تخفیف و جوایز ویژه برنده شو!'),
                        ),
                        SizedBox(
                          height: 22,
                          child: FilledButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.white.withOpacity(0.5);
                                  }
                                  return Colors.white;
                                },
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'بزن بریم',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //! لیست منو
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      IconTitleList(
                          title: 'دیجی پلاس',
                          icon: Icons.star_border,
                          context: context),
                      IconTitleList(
                          title: 'لیست ها',
                          icon: Icons.favorite_border,
                          context: context),
                      IconTitleList(
                          title: 'نقد و نظرات',
                          icon: Icons.maps_ugc_outlined,
                          context: context),
                      IconTitleList(
                          title: 'آدرس ها',
                          icon: Icons.dns_outlined,
                          context: context),
                      IconTitleList(
                          title: 'کارت های هدیه',
                          icon: Icons.redeem_outlined,
                          context: context),
                      IconTitleList(
                          title: 'فعال سازی مگنت',
                          icon: Icons.play_arrow_outlined,
                          context: context),
                      IconTitleList(
                          title: 'اطلاعات حساب کاربری',
                          icon: Icons.person_outline,
                          context: context),
                    ],
                  ),
                ),
                //! space
                SizedBox(height: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class svgText extends StatelessWidget {
  const svgText(
      {super.key, required this.title, required this.src, this.count = ''});

  final String title, src, count;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SvgPicture.asset(
              'assets/images/svg/$src',
              height: 50,
            ),
            if (count != '')
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(1, -1),
                            blurRadius: 1,
                            spreadRadius: 1,
                            blurStyle: BlurStyle.solid)
                      ]),
                  child: Center(
                      child: Text(
                    count != '' ? count : '',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
                ),
              ),
          ],
        ),
        SizedBox(height: 7),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
      ],
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    this.title = '',
    this.bgColor = Colors.cyan,
    this.icnColor = Colors.white,
    this.icon,
  });
  final String? title;
  final bgColor, icnColor;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: bgColor, // Colors.cyan.shade700,
          child: Icon(
            icon,
            color: icnColor, // Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title!,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
