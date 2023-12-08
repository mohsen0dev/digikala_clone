import 'package:digikala_clone/models/categori_model.dart';
import 'package:flutter/material.dart';

class CategoriWidget extends StatefulWidget {
  const CategoriWidget({
    super.key,
    required this.wi,
  });

  final double wi;

  @override
  State<CategoriWidget> createState() => _CategoriWidgetState();
}

class _CategoriWidgetState extends State<CategoriWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      width: widget.wi,
      height: 870,
      child: Column(
        children: [
          Text(
            'خرید بر اساس دسته بندی',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                wordSpacing: -2),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(15),
              physics: NeverScrollableScrollPhysics(),
              itemCount: categoriList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                // mainAxisExtent: 250,
                // mainAxisSpacing: 25,
                // crossAxisSpacing: 5,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Image.asset(
                        categoriList[index].src,
                        fit: BoxFit.cover,
                        //height: 90,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        child: Text(
                          textAlign: TextAlign.center,
                          categoriList[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
