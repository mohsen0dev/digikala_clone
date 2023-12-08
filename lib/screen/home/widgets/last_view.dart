import 'package:digikala_clone/models/bazdid_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastView extends StatelessWidget {
  const LastView({
    super.key,
    required this.wi,
  });

  final double wi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18, left: 15, right: 15, bottom: 5),
      width: wi,
      height: 355,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'دریل',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('بر اساس بازدیدهای شما'),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(1),
              physics: NeverScrollableScrollPhysics(),
              itemCount: bazdidItem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.black12),
                        bottom: BorderSide(color: Colors.black12)),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Image.asset(
                    bazdidItem[index].src,
                    fit: BoxFit.cover,
                    //height: 90,
                  ),
                );
              },
            ),
          ),
          Center(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.chevron_back,
                    color: Colors.red,
                  ),
                  label: Text(
                    'مشاهده بیش از 5000 کالا',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
