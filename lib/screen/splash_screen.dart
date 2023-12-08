import 'dart:async';

import 'package:digikala_clone/butomshidt.dart';
import 'package:digikala_clone/constans.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  bool selected = false;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        // MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
        MaterialPageRoute(
          builder: (BuildContext context) => ButoomShit(),
        ),
      );
    });

    timer = Timer(
      const Duration(seconds: 1),
      () {
        setState(
          () {
            selected = true;
          },
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: AnimatedContainer(
          alignment:
              selected ? Alignment.center : AlignmentDirectional.centerEnd,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Image.asset(
              '${constans.scrPic}app/digikala_small_logo.png',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
