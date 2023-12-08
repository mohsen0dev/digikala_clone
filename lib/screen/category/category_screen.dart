import 'package:cached_network_image/cached_network_image.dart';
import 'package:digikala_clone/constans.dart';
import 'package:digikala_clone/models/categori_model.dart';
import 'package:digikala_clone/models/category_list_model.dart';
import 'package:digikala_clone/screen/home/home_screen.dart';
import 'package:digikala_clone/screen/home/widgets/serch_widget.dart';
import 'package:digikala_clone/screen/search/search_page.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    List categoryListName = [
      categoryListAbzar,
      categoryListMobile,
      categoryListDigital,
      categoryListMod,
      categoryListSuper,
      categoryListBomi,
      categoryListKhodro,
      categoryListZibaei,
      categoryListAbzar,
      categoryListMobile,
      categoryListAbzar,
      categoryListMobile,
      categoryListAbzar,
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: SearchBarr(press: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
      }),
      body: Container(
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.only(bottom: 15),
              color: Colors.white,
              child: Column(
                children: List.generate(
                  categoriList.length,
                  (index) => Column(
                    children: [
                      TitleCategory(
                          press: () {}, title: categoriList[index].title),
                      ListCategory(categoryItem: categoryListName[index]),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                child: ErsalWidget(wi: wi))
          ]),
        ),
      ),
    );
  }

  Container ListCategory(
      {
      //String title = '',
      //count = '',
      //src =
      //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2D5R62C2c1VlhFwx9Hl26e7LmZUYvtbi65Wv9IRt_Mn3sIgx4qAW2J44fH_7ImNfJCtw&usqp=CAU',
      required List<CategoryListModel> categoryItem}) {
    return Container(
      height: 190,
      child: ListView.builder(
        itemCount: categoryItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.all(5),
            height: 100,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: categoryItem[index].src,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      Image.asset(constans.app + 'not.png'),
                  fadeOutDuration: const Duration(milliseconds: 400),
                  fadeInDuration: const Duration(milliseconds: 400),
                ),
                Text(
                  categoryItem[index].title,
                  style: textStyleM(size: 13, weight: FontWeight.w400),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  categoryItem[index].count,
                  style: textStyleM(
                      color: Colors.black45, weight: FontWeight.normal),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Row TitleCategory({required String title, required VoidCallback press}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyleM(),
        ),
        TextButton(
          child: Text('مشاهده همه'),
          onPressed: press,
        ),
      ],
    );
  }

  TextStyle textStyleM(
          {double size = 14,
          Color color = Colors.black,
          FontWeight weight = FontWeight.bold}) =>
      TextStyle(fontSize: size, color: color, fontWeight: weight);
}
