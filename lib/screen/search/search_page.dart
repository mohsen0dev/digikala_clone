import 'package:digikala_clone/models/history_search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: TextField(),
      // ),
      body: Container(
        // color: Colors.blue,
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'جستجو در همه کالا ها',
                        hintStyle: TextStyle(color: Colors.black38),
                        suffix: IconButton(
                          icon: Icon(
                            Icons.cancel_rounded,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        prefixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'تاریخچه جستجوهای شما',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Spacer(),
                      Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
                history(item: HistoryMyItem),
                SizedBox(height: 5),
                Divider(
                  color: Colors.black38,
                  endIndent: 50,
                  indent: 50,
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.whatshot_outlined,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'جستجوهای پرطرفدار',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                history(item: HistoryHotItem),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container history({required item}) {
    return Container(
      height: 40,
      //width: 800,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: item.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: InkWell(
                    onTap: item[index].press,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      // margin: EdgeInsets.symmetric(
                      //     vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              '${item[index].title}',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 10,
                            color: Colors.black38,
                          )
                        ],
                      ),
                    ),
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
