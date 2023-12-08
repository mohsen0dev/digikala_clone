import 'package:digikala_clone/constans.dart';
import 'package:digikala_clone/models/product_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatelessWidget {
  final select;
  ProductPage({
    Key? key,
    required this.select,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              icnButn(icons: Icons.shopping_basket_outlined),
              icnButn(icons: Icons.favorite_border),
              icnButn(icons: Icons.more_vert_rounded),
            ],
            iconTheme: IconThemeData(color: Colors.black87),
          ),
          bottomSheet:
              CustomButton(fi1: select.fi1, fi2: select.fi2, select: select),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.only(bottom: 7),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (select.fi2 != "")
                            //! متن پیشنهاد شگفت انگیز
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'پیشنهاد شگفت انگیز',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    Text(
                                      '12:20:30',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.red,
                                  thickness: 1,
                                )
                              ],
                            ),
                          Center(
                            child: Image.asset(select.src),
                          ),
                          Text(
                            select.title,
                          ),
                          SizedBox(height: 10),
                          //! امتیاز - نظر - پرسش
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber.shade700,
                                  size: 18,
                                ),
                              ),
                              Text(
                                '3.9',
                              ),
                              Text(
                                '(194)',
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.fiber_manual_record_rounded,
                                  color: Colors.black12,
                                  size: 10,
                                ),
                              ),
                              Text(
                                '183 دیدگاهکاربران',
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.fiber_manual_record_rounded,
                                  color: Colors.black12,
                                  size: 10,
                                ),
                              ),
                              Text(
                                '3 پرسش و پاسخ',
                              ),
                            ],
                          ),
                          //! لایک و پیشنهاد خریداران
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6.0),
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '78% (80 نفر) از خریداران این کالا را پیشنهاد کرده اند',
                              ),
                            ],
                          ),
                        ]),
                  ),
                  //! بخش2
                  //! space
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.only(bottom: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'فروشنده',
                          style: TitleStyle(),
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.store_outlined,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'کارگذاری جنوب',
                                    style: TitleStyle(),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        'رضایت خریداران ',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        '86.6%',
                                        style: TextStyle(
                                            color: Colors.amber.shade700),
                                      ),
                                      Container(
                                        height: 15,
                                        child: VerticalDivider(
                                          thickness: 2,
                                          // color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'عملکرد ',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'خوب',
                                        style: TextStyle(
                                            color: Colors.amber.shade700),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(height: 10),
                                ],
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ],
                        ),
                        myDivider(),
                        Row(
                          children: [
                            Icon(Icons.gpp_good_outlined),
                            SizedBox(width: 10),
                            Text(
                              'گارانتی اصالت و سلامت فیزیکی کالا',
                              style: TitleStyle(),
                            )
                          ],
                        ),
                        myDivider(),
                        Row(
                          children: [
                            Icon(
                              Icons.save_as_outlined,
                              color: Colors.cyan,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'موجود در انبار دیجی کالا',
                              style: TitleStyle(),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 12,
                                  width: 2,
                                  color: Colors.grey.shade300,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 7),
                                  child: Icon(
                                    Icons.fiber_manual_record_rounded,
                                    color: Colors.cyan,
                                    size: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.fire_truck_outlined,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text('ارسال دیجی کالا')
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 12,
                                  width: 2,
                                  color: Colors.grey.shade300,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 7),
                                  child: Icon(
                                    Icons.fiber_manual_record_rounded,
                                    color: Colors.cyan,
                                    size: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.rocket_outlined,
                              color: Colors.indigo,
                            ),
                            SizedBox(width: 5),
                            Text('ارسال فوری (شهر تهران)')
                          ],
                        ),
                        myDivider(),
                        Row(
                          children: [
                            SizedBox(width: 5),
                            SvgPicture.asset('${constans.svg}club.svg'),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                '40 امتیاز در دیجی کلاب دریافت می کنید',
                                style: TitleStyle(size: 14),
                              ),
                            ),
                          ],
                        ),
                        myDivider(),
                        Row(
                          children: [
                            SizedBox(width: 5),
                            Icon(
                              Icons.info,
                              color: Colors.green.shade800,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('بهترین قیمت در 30 روز گذشته',
                                  style: TextStyle(
                                      color: Colors.green.shade800,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'آیا قیمت مناسب تری سراغ دارید؟',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                            ),
                            Icon(
                              Icons.local_offer_outlined,
                              color: Colors.grey.shade500,
                              size: 18,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ), //! end part 2
                  //! start part3
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('${constans.svg}digiplus.svg'),
                            Text(
                              'ارسال ',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.purple.shade600),
                            ),
                            Text(
                              'رایگان ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple.shade600),
                            ),
                            Text(
                              'سفارش ها برای اعضای دیجی پلاس',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.purple.shade600),
                            ),
                          ],
                        ),
                        Text(
                          '39 هزار تومان هزینه ارسال به سراسر ایران برای کاربران غیردیجی پلاس',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('${constans.svg}digiplus.svg'),
                            Text(
                              'مزایای عضویت پلاس برای این سفارش',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.purple.shade600),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.purple,
                                  height: 12,
                                  width: 0.8,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Icon(
                                    Icons.fiber_manual_record_rounded,
                                    size: 10,
                                    color: Colors.purple.shade600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'امکان ارسال فوری (شهر تهران)',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ویژگی های محصول',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        myDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'مشخصات فنی',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 15),
                          ],
                        ),
                        myDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'معرفی اجمالی محصول',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 15),
                          ],
                        ),
                        myDivider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.info,
                              color: Colors.black45,
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'درخواست مرجوع کردن کالا در گروه با دلیل "انصراف از خرید" تنها در صورتی قابل تایید است که کالا در شرایط اولیه باشد(درصورت پلمپ بودن، کالا نباید باز شده باشد).',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              'بازخورد درباره مشخصات این کالا',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                  fontSize: 12),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.info_outline_rounded,
                              color: Colors.black45,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  TextStyle TitleStyle({double? size}) {
    return TextStyle(
        fontSize: size != null ? size : 16, fontWeight: FontWeight.bold);
  }

  IconButton icnButn({VoidCallback? press, required IconData icons}) =>
      IconButton(
          onPressed: press != null ? press : () {},
          icon: Icon(
            icons,
            color: Colors.black54,
          ));
}

class myDivider extends StatelessWidget {
  const myDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 1, height: 25, endIndent: 15, indent: 15);
  }
}

class CustomButton extends StatelessWidget {
  final String fi1;
  final String fi2;
  final select;
  CustomButton({required this.fi1, required this.fi2, required this.select});

  @override
  Widget build(BuildContext context) {
    int fib = 0;
    int fia = int.parse(fi1.replaceAll(",", ''));
    if (fi2 != "") fib = int.parse(fi2.replaceAll(",", ''));
    // final gift = fia - (int.parse(fi2.replaceAll(",", '')));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.black38),
      padding: EdgeInsets.only(top: 1.5),
      height: 100,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                ProductModels newProduct = ProductModels(
                    title: select.title,
                    fiOrginal: select.fi1,
                    fiOf: select.fi2,
                    src: select.src);
                productItem.add(newProduct);
                print(fia);
                print(fib);
                // print('gift= $gift');
              },
              child: Text('افزودن به سبد خرید'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 00.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (fib != 0)
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            '${(((fia - fib) / fia) * 100).round()}%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          '$fi1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red.withOpacity(0.5),
                            decorationThickness: 2.0,
                          ),
                        ),
                      ],
                    ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 5),
                        child: Text(
                          fib == 0 ? '$fia' : '$fib',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SvgPicture.asset(
                        '${constans.svg}toman3.svg',
                        height: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
