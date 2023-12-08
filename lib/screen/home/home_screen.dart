import 'package:digikala_clone/models/gift_models.dart';
import 'package:digikala_clone/models/gift_super_models.dart';
import 'package:digikala_clone/screen/home/widgets/ads_widgets.dart';
import 'package:digikala_clone/screen/home/widgets/digi_app_widget.dart';
import 'package:digikala_clone/screen/home/widgets/product_gifts.dart';
import 'package:digikala_clone/screen/home/widgets/serch_widget.dart';
import 'package:digikala_clone/screen/search/search_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'widgets/ads_mind_widget.dart';
import 'widgets/categori_widget.dart';
import 'widgets/last_view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var count = 0.obs;
  @override
  Widget build(BuildContext context) {
    RefreshController _refreshController =
        RefreshController(initialRefresh: false);

    void _onRefresh() async {
      // monitor network fetch
      await Future.delayed(Duration(milliseconds: 1000));
      // if failed,use refreshFailed()
      _refreshController.refreshCompleted();
    }

    void _onLoading() async {
      // monitor network fetch
      await Future.delayed(Duration(milliseconds: 1000));
      // if failed,use loadFailed(),if no data return,use LoadNodata()
      //
      if (mounted) setState(() {});
      _refreshController.loadComplete();
    }

    var he = MediaQuery.of(context).size.height;
    var wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: SearchBarr(press: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
      }),
      body: SafeArea(
        //! scrol refresh page
        child: SmartRefresher(
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          header: MaterialClassicHeader(
            color: Colors.red,
          ),
          //footer: MaterialClassicHeader(),
          controller: _refreshController,
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10),
                  //! 2- slider ads
                  AdsWidget(he: he),
                  //! 3- digi app
                  DigiAppWidget(wi: wi),
                  //! 4- gift product
                  ProductGifts(
                    color: Colors.red,
                    wi: wi,
                    he: he,
                    model: giftModel,
                    title: "پیشنهاد\nشگفت\nانـگــیـــز",
                    src: "assets/images/app/box.png",
                  ),
                  //! 5- mind ads
                  MindAds(wi: wi, he: he),
                  //! 6- gift super product
                  ProductGifts(
                      color: Colors.green,
                      wi: wi,
                      he: he,
                      model: giftSuperModel,
                      title: "شگــفــت\nانـــگــیـــــز\nسوپرمارکتی",
                      src: "assets/images/app/gift_super.png"),
                  //! 7- categori
                  CategoriWidget(wi: wi),
                  //! 8- bazdid akhir 1
                  LastView(wi: wi),
                  //! ersal
                  ErsalWidget(wi: wi)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ErsalWidget extends StatelessWidget {
  const ErsalWidget({
    super.key,
    required this.wi,
  });

  final double wi;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: wi,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 25),
                width: wi * .67,
                child: Text.rich(
                  TextSpan(text: 'سفارش شما به', children: [
                    TextSpan(
                        text: ' "نوشهر" ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                        text:
                            'ارسال می شود، امکان خرید، هزینه و شیوه ارسال کالا بر این اساس محاسبه می شود.'),
                  ]),
                ),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.back,
                      size: 18,
                    ),
                    label: Text(
                      'تغییر محل ارسال',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                'assets/images/app/car.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
