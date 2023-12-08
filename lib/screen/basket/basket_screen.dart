import 'dart:async';

import 'package:digikala_clone/constans.dart';
import 'package:digikala_clone/models/product_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  RxDouble valuProgrs = 0.0.obs;
  late double vlPrg = 0;
  late TabController _tabController;
  late int deletItem = -1;

  int totalPrice = 0;
  int totalGift = 0;
  List<int> _count = [1, 1, 1].obs;
  List cartItems = [], deletedItems = [];
  bool removeItem = true;

  @override
  void initState() {
    int i = 0;
    super.initState();
    //! محاسبه جمع مبلغ کالاها
    for (var product in productItem) {
      // totalPrice += int.parse(product.fiOrginal.replaceAll(",", '')) * _count[i];
      //! count aslah shavad
      totalPrice += int.parse(product.fiOrginal.replaceAll(",", '')) * 1;
      totalGift += product.fiOf == ""
          ? 0
          : int.parse(product.fiOrginal.replaceAll(",", '')) -
              int.parse(product.fiOf.replaceAll(",", '')) * 1;

      i++;
    }
    _tabController = TabController(length: 2, vsync: this);
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    // آزاد سازی منابع
    _animationController.dispose();
    super.dispose();
  }

  void deleteItem(int index) {
    deletedItems.add(cartItems[index]);
    cartItems.removeAt(index);
  }

  void restoreItem(int index) {
    cartItems.add(deletedItems[index]);
    deletedItems.removeAt(index);
  }

//! افزایش کالا
  void _incrementProductQuantity(int index) {
    int fiOrginal = int.parse(productItem[index].fiOrginal);
    int fiOf = int.parse(productItem[index].fiOf);
    setState(() {
      totalPrice += fiOrginal;
      totalGift += fiOf;
      // _count[index]++;
      // _count.add(1);
    });
  }

//! کاهش کالا
  void _decrementProductQuantity(int index) {
    // if (_count[index] > 1) {
    if (1 > 1) {
      int fiOf = productItem[index].fiOf == ''
          ? 0
          : int.parse(productItem[index].fiOf);
      int fiOrginal = int.parse(productItem[index].fiOrginal);
      setState(() {
        // _count[index]--;
        totalPrice -= productItem[index].fiOf != '' ? fiOf : fiOrginal;
      });
    } else {
      deletItem = index;
      setState(() {});
      Timer timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
        valuProgrs.value += 0.34;
      });
      Future.delayed(Duration(seconds: 3), () {
        valuProgrs.value = 0.0;
        timer.cancel();
        int i = 0;

        setState(() {
          if (removeItem) {
            deletedItems.add(productItem[index]);

            deletItem = -1;
            totalPrice = 0;
            totalGift = 0;

            productItem.removeAt(index);
            // _count.removeAt(index);
            for (var product in productItem) {
              // totalPrice += int.parse(product.fiOrginal) * _count[i];
              totalPrice +=
                  int.parse(product.fiOrginal.replaceAll(',', '')) * 1;
              totalGift += product.fiOf == ""
                  ? 0
                  : int.parse(product.fiOrginal.replaceAll(",", '')) -
                      int.parse(product.fiOf.replaceAll(",", '')) * 1;
              i++;
            }
          } else {
            deletItem = -1;
            removeItem = true;
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    AnimationController controller = Get.put(AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    ));
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Scaffold(
        appBar: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.black,
          labelColor: Colors.red,
          onTap: (i) {
            setState(() {});
          },
          tabs: [
            Tab(
              text: "سبد خرید",
            ),
            Tab(text: "لیست خرید بعدی"),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            //! سبد خرید //!
            basket_buy(size, controller),
            //! لیست خرید بعدی //!
            listBuyNext(),
          ],
        ),
        //! bottomshep
        // bottomNavigationBar: Padding(
        bottomSheet: _tabController.index == 0
            ? Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                        // height: 20,
                        // width: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          "ادامه فرآیند خرید",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "جمع سبد خرید",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "${(totalPrice - totalGift).toString()}",
                                style: TextStyle(fontSize: 14),
                              ),
                              Image.asset('${constans.app}toman.png')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox(),
      ),
    );
  }

//! list buy next
  Widget listBuyNext() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Image.asset(
              '${constans.app}empty_list.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Text(
              'لیست خرید بعدی شما خالی است!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                'شما می توانید محصولاتی که به سبد خرید خود افزوده اید و فعلا قصد خرید آن ها را نداری، در لیست خرید بعدی قرار داده و هر زمان مایل بودید آنه ها را به سبد خرید اضافه کرده و خرید آن ها را تکمیل کنید.',
                style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black87),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 50,
            color: Colors.cyan,
            child: ElevatedButton(
                onPressed: () {
                  ProductModels newProduct =
                      ProductModels(title: 'title', fiOrginal: '1500');
                  productItem.add(newProduct);
                  // _count.add(1);
                },
                child: Text('add')),
          )
        ],
      ),
    );
  }

//! basket buy
  Widget basket_buy(Size size, AnimationController controller) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! منو کالاهای دیگر
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('دیگر کالاها'),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
              ],
            ),
            //! جمع "تعداد" کالا
            Text('${productItem.length} کالا',
                textDirection: TextDirection.rtl),
            //! لیست کالاها
            Expanded(
              child: productItem.length != 0
                  ? Obx(
                      () => ListView.builder(
                        itemCount: productItem.length,
                        itemBuilder: (BuildContext context, int index) {
                          var item = productItem[index];
                          return Card(
                            child: deletItem != index
                                ? Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    width: size.width,
                                    height: 300,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          //! فروش ویژه
                                          child: Text(
                                            '|     فروش ویژه ',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              //fontFamily: 'kalameh',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // color: Colors.red,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              //! عکس
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    "${item.src}",
                                                    height: 130,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              //! تایتل و ارسال کننده
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  // color: Colors.amber,
                                                  //width: 200,
                                                  height: 170,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        item.title,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14,
                                                            wordSpacing: -1),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .verified_user_outlined,
                                                            size: 20,
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                          Text(
                                                            item.garanti,
                                                            style: styleMy(),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .store_outlined,
                                                            size: 20,
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                          Text(
                                                            item.froshande,
                                                            style: styleMy(),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.save_outlined,
                                                            size: 20,
                                                            color: Colors.cyan,
                                                          ),
                                                          Text(
                                                            item.anbar,
                                                            style: styleMy(),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Transform.rotate(
                                                            angle: 1.6,
                                                            child: Icon(
                                                              Icons
                                                                  .hdr_strong_outlined,
                                                              size: 20,
                                                              color:
                                                                  Colors.cyan,
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .fire_truck_outlined,
                                                            size: 20,
                                                            color: item.ferestande ==
                                                                    'ارسال دیجی کالا'
                                                                ? Colors.red
                                                                : Colors
                                                                    .black45,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            item.ferestande,
                                                            style: styleMy(),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        //! دکمه + و- کالا
                                        Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: Colors
                                                          .grey.shade300)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  IconButton(
                                                    icon: Icon(Icons.add,
                                                        color: Colors.red),
                                                    onPressed: () {
                                                      _incrementProductQuantity(
                                                          index);
                                                    },
                                                  ),
                                                  Text(
                                                    // products[index]["quantity"].toString(),
                                                    '1',
                                                    // _count[index].toString(),
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.red),
                                                  ),
                                                  IconButton(
                                                    icon: Icon(
                                                        // _count[index] == 1
                                                        1 == 1
                                                            ? Icons
                                                                .delete_outline
                                                            : Icons.remove,
                                                        color: Colors.red),
                                                    onPressed: () {
                                                      _decrementProductQuantity(
                                                          index);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            //! مبلغ اصلی و تخفیف
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (productItem[index].fiOf !=
                                                      "")
                                                    Text(
                                                      '${(int.parse(productItem[index].fiOrginal.replaceAll(",", '')) - int.parse(productItem[index].fiOf.replaceAll(",", '')))} تومان تخفیف',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 12),
                                                    ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        productItem[index]
                                                                    .fiOf ==
                                                                ''
                                                            ? productItem[index]
                                                                .fiOrginal
                                                            : productItem[index]
                                                                .fiOf,
                                                      ),
                                                      Image.asset(
                                                          height: 15,
                                                          constans.app +
                                                              'toman2.png'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        //! ذخیره لیست
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                  'ذخیره در لیست خرید بعدی >')),
                                        )
                                      ],
                                    ),
                                  )
                                : Container(
                                    height: 290,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.delete_outline,
                                          color: Colors.black38,
                                          size: 40,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'این کالا از سبد خرید حذف شد',
                                          style:
                                              TextStyle(color: Colors.black45),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            removeItem = false;
                                          },
                                          icon: Icon(
                                            Icons
                                                .settings_backup_restore_outlined,
                                            color: Colors.black,
                                          ),
                                          label: Text(
                                            'بازگرداندن',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        Spacer(),
                                        Directionality(
                                            textDirection: TextDirection.ltr,
                                            child: Obx(
                                              () {
                                                return LinearProgressIndicator(
                                                    backgroundColor:
                                                        Colors.grey.shade300,
                                                    value:
                                                        valuProgrs.value / 10);
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                          );
                        },
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Image.asset(
                            '${constans.app}empty_list.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Text(
                            'سبد شما خالی است!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void addItem() {
    productItem.add(ProductModels(title: 'title', fiOrginal: '1000'));
    // _count.add(1);
  }

  TextStyle styleMy() =>
      TextStyle(fontSize: 12, color: Colors.black54, wordSpacing: -1);
}
