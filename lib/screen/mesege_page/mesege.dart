import 'package:digikala_clone/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'پیام ها',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.black),
                ),
                color: Colors.white,
              ),
              child: SvgPicture.asset(
                height: 250,
                '${constans.svg}m.svg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Text('...پیامی وجود ندارد'),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
