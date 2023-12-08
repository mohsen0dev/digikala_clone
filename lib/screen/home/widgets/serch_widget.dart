import 'package:digikala_clone/constans.dart';
import 'package:flutter/material.dart';

class SearchBarr extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback press;

  SearchBarr({Key? key, required this.press}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: GestureDetector(
        onTap: press,
        child: Container(
          padding: const EdgeInsets.only(right: 12),
          height: 45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              const SizedBox(width: 15),
              Text(
                'جستجو در',
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(width: 5),
              Image.asset(
                '${constans.app}digikala_small_logo.png',
                width: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
