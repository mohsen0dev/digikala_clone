import 'package:digikala_clone/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//   // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'yekan',
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      // home: HomePage(),
    );
  }
}
// import 'package:flutter/material.dart';

