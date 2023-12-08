import 'package:digikala_clone/models/ads_mind_model.dart';
import 'package:flutter/material.dart';

class MindAds extends StatelessWidget {
  const MindAds({
    super.key,
    required this.wi,
    required this.he,
  });

  final double wi;
  final double he;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: wi,
      height: he * .45,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                adsMind(wi, he, 0),
                adsMind(wi, he, 2),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                adsMind(wi, he, 1),
                adsMind(wi, he, 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget adsMind(double wi, double he, int i) {
  return Expanded(
    child: Container(
      width: wi,
      height: he,
      padding: EdgeInsets.only(left: 8, right: 5, top: 25),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(asdMindModel[i].src),
        ),
      ),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      asdMindModel[i].gift != ''
                          ? Text(
                              asdMindModel[i].gift,
                              style: TextStyle(wordSpacing: -2, fontSize: 12),
                            )
                          : SizedBox(),
                    ],
                  ),
                  asdMindModel[i].title != ''
                      ? Text(
                          asdMindModel[i].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              wordSpacing: -2,
                              height: 1.4),
                        )
                      : SizedBox(),
                  asdMindModel[i].text != ''
                      ? Text(asdMindModel[i].text)
                      : SizedBox(),
                  SizedBox(height: 8),
                  asdMindModel[i].txtBotun != ''
                      ? SizedBox(
                          height: 25,
                          child: FilledButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.black.withOpacity(0.5);
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: asdMindModel[i].press,
                            child: Text(
                              asdMindModel[i].txtBotun,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : SizedBox()
                ],
              ),
            ),
            Container(
              width: wi * .21,
            ),
          ],
        ),
      ),
    ),
  );
}
