import 'package:flutter/material.dart';

class BotoomNvgtrWidget extends StatelessWidget {
  const BotoomNvgtrWidget({
    super.key,
    required int selectedIndex,
    required this.onItemTapped,
  }) : _selectedIndex = selectedIndex;

  final int _selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'خانه',
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'دسته بندی',
            activeIcon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'سبد خرید',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_outlined),
            label: 'مگنت',
            activeIcon: Icon(Icons.play_arrow),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'دیجی کالای من',
            activeIcon: Icon(Icons.person),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey.shade400,
        showUnselectedLabels: true,
        onTap: onItemTapped);
  }
}
