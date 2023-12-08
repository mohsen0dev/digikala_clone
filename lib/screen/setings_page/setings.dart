import 'package:digikala_clone/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetingPage extends StatefulWidget {
  const SetingPage({super.key});

  @override
  State<SetingPage> createState() => _SetingPageState();
}

class _SetingPageState extends State<SetingPage> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تنظیمات',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                IconTitleList(
                  context: context,
                  icon: Icons.quiz_outlined,
                  title: 'پرسش های متداول',
                  //press: () {},
                ),
                IconTitleList(
                  context: context,
                  icon: Icons.privacy_tip_outlined,
                  title: 'حریم خصوصی',
                  //press: () {},
                ),
                IconTitleList(
                  context: context,
                  icon: Icons.my_library_books_outlined,
                  title: 'شرایط استفاده',
                  //press: () {},
                ),
                IconTitleList(
                  context: context,
                  icon: Icons.call_outlined,
                  title: 'تماس با ما',
                  //press: () {},
                ),
                IconTitleList(
                  context: context,
                  icon: Icons.bug_report_outlined,
                  title: 'گزارش خطا',
                  //press: () {},
                ),
                IconTitleList(
                  context: context,
                  icon: Icons.star_outline_rounded,
                  title: 'امتیاز به دیجی کالا',
                  //press: () {},
                ),
                Row(children: [
                  Icon(Icons.support_agent_outlined),
                  SizedBox(width: 10),
                  Text(
                    'ارسال اطلاعات برای بهبود تجربه کاربری',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    activeColor: Colors.cyan,
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ]),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  child: Text(
                    'با ارسال اطلاعات حسابم به شکل ناشناسريا، به بهبود تجربه خرید دیجی کالا کمک می کنم.',
                    style: TextStyle(color: Colors.black45, height: 1.5),
                  ),
                ),
                Divider(
                  color: Colors.black54,
                  endIndent: 5,
                  indent: 30,
                ),
                Row(children: [
                  Icon(Icons.notifications_active_outlined),
                  SizedBox(width: 10),
                  Text(
                    'ارسال اطلاعات برای بهبود تجربه کاربری',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    activeColor: Colors.cyan,
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ]),
                Divider(
                  color: Colors.black54,
                  endIndent: 5,
                  indent: 30,
                ),
                SizedBox(height: 10),
                Row(children: [
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.red.shade900,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'خروج از حساب کابری',
                    style: TextStyle(
                        color: Colors.red.shade900,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ]),
                Spacer(),
                Image.asset('${constans.app}digikala_small_logo.png'),
                SizedBox(height: 10),
                Text(
                  'App Version 2.9.4-CB',
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconTitleList extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? press;
  final BuildContext context;
  const IconTitleList({
    Key? key,
    required this.title,
    required this.icon,
    this.press,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press != null
          ? press
          : () {
              Get.snackbar(title, "",
                  titleText: Center(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.redAccent, fontSize: 18),
                    ),
                  ),
                  duration: Duration(seconds: 2),
                  colorText: Colors.white,
                  borderRadius: 10,
                  snackPosition: SnackPosition.TOP,
                  backgroundColor: Colors.transparent,
                  barBlur: 0,
                  instantInit: false);
            },
      child: Column(
        children: [
          SizedBox(height: 5),
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 14,
                color: Colors.black38,
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(
            color: Colors.black54,
            endIndent: 5,
            indent: 30,
          ),
        ],
      ),
    );
  }
}
