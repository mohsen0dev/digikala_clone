import 'package:digikala_clone/screen/basket/basket_screen.dart';
import 'package:digikala_clone/screen/category/category_screen.dart';
import 'package:digikala_clone/screen/home/home_screen.dart';
import 'package:digikala_clone/screen/magnet/magnet_screen.dart';
import 'package:digikala_clone/screen/my_digi/my_digikala_screen.dart';
import 'package:flutter/material.dart';

import 'screen/home/widgets/bottom_navigator.dart';

class ButoomShit extends StatefulWidget {
  const ButoomShit({super.key});

  @override
  State<ButoomShit> createState() => _ButoomShitState();
}

class _ButoomShitState extends State<ButoomShit> {
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryPage(),
    ShoppingCartPage(),
    MagnetPage(),
    MyDigikalaPage(),
  ];

  int _selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BotoomNvgtrWidget(
            selectedIndex: _selectedIndex, onItemTapped: onItemTapped),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
