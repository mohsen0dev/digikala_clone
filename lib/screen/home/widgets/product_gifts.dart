import 'dart:async';

import 'package:digikala_clone/constans.dart';
import 'package:digikala_clone/models/gift_models.dart';
import 'package:digikala_clone/screen/product/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProductGifts extends StatefulWidget {
  ProductGifts({
    super.key,
    required this.wi,
    required this.he,
    required this.model,
    required this.color,
    required this.title,
    required this.src,
  });

  final double wi;
  final double he;
  final model;
  final Color color;

  final String title, src;

  @override
  State<ProductGifts> createState() => _ProductGiftsState();
}

class _ProductGiftsState extends State<ProductGifts> {
  var hh = 0.obs;

  var mm = 0.obs;

  var ss = 0.obs;

  var count = 1.obs;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      time = DateTime.now();
      increment();
    });
    super.initState();
  }

  void increment() {
    count++;
    hh = (23 - time.hour).obs;
    mm = (59 - time.minute).obs;
    ss = (59 - time.second).obs;
    // update(); // Tell your widgets that you have changed the counter
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      color: widget.color,
      width: widget.wi,
      height: 355,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        itemCount: widget.model.length + 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final select = widget.model[index < 3 ? index : index - 2];
          return index == 0
              ? FirestGift(he: widget.he, title: widget.title, src: widget.src)
              : index == widget.model.length + 1
                  ? EndPageListGift(context)
                  : ListProductGift(
                      index, hh.value, mm.value, ss.value, select);
        },
      ),
    );
  }

  Container EndPageListGift(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      width: widget.wi / 2.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.red,
            size: 50,
          ),
          SizedBox(height: 10),
          Text(
            "مشاهده همه",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }

  Container ListProductGift(int index, var h, var m, var s, var select) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: widget.wi * .5,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ProductPage(
                select: select,
              );
            },
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
              child: Text(
                select.app ? 'شگفت انگیز اختصاصی اپ' : '',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
                child: Image.asset(select.src, fit: BoxFit.cover, height: 110)),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 10, left: 10),
              child: Text(
                select.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
            select.fi1 != ''
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 10, left: 10),
                        child: Text(
                          select.sender != '' ? select.sender : '',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            //height: 1.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 7, right: 05, left: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.red,
                              ),
                              child: Text(
                                select.gift + '%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  //textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.end,
                                  select.fi2.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    //height: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            Image.asset(constans.scrPic + 'app/toman.png')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            //textDirection: TextDirection.rtl,
                            textAlign: TextAlign.end,
                            select.fi1.toString(),
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.black54,
                                decorationThickness: 2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: select.frosh != ''
                            ? Container(
                                height: 4,
                                child: LinearPercentIndicator(
                                  barRadius: Radius.circular(12),
                                  animation: true,
                                  animationDuration: 1000,
                                  lineHeight: 20.0,
                                  percent: double.parse(select.frosh) / 100,
                                  progressColor: Colors.red,
                                  backgroundColor: Colors.grey.shade300,
                                ),
                              )
                            : SizedBox(
                                height: 5,
                              ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  select.frosh != '' ? select.frosh + '%' : '',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    //height: 1.5,
                                  ),
                                ),
                                Text(
                                  select.frosh != '' ? ' فروش رفته' : '',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    //height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                            //! time
                            Obx(() => Text(
                                  '${hh.value}:${mm.value}:${ss.value}',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1
                                      //height: 1.5,
                                      ),
                                )),
                            // GetBuilder<CounterController>(
                            //   init: CounterController(),
                            //   builder: (controller) => Text(
                            //     '${hh.value}:${mm.value}:${ss.value}',
                            //     style: TextStyle(
                            //         color: Colors.red,
                            //         fontSize: 12,
                            //         fontWeight: FontWeight.bold,
                            //         letterSpacing: 1
                            //         //height: 1.5,
                            //         ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 80,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'ناموجود',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

FirestGift({required double he, required String title, src}) {
  return Container(
    width: 170,
    padding: EdgeInsets.only(top: 20),

    // color: Colors.blue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          // textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "morabba",
              color: Colors.white,
              fontSize: 25,
              height: 1.4,
              fontWeight: FontWeight.w100),
        ),
        Image.asset(
          src,
          fit: BoxFit.cover,
          height: 135,
        ),
        Directionality(
          textDirection: TextDirection.ltr,
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.chevron_back,
              color: Colors.white,
            ),
            label: Text(
              'مشاهده همه',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    ),
  );
}
