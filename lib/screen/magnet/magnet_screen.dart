import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MagnetPage extends StatefulWidget {
  @override
  State<MagnetPage> createState() => _MagnetPageState();
}

class _MagnetPageState extends State<MagnetPage> {
  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();

  int index = 0;
  final Random _random = Random();
  void changeIndex() {
    //setState(() => index = random.nextInt(100));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magnet Page'),
      ),
      body: Center(
          child: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            WovenGridTile(1),
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromARGB(
                //or with fromRGBO with fourth arg as _random.nextDouble(),
                240,
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
              ),
            ),
            child: Center(child: Text('محصول  $index')),
          ),
        ),
      )),
    );
  }
}
