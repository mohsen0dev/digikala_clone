import 'package:digikala_clone/models/app_models.dart';
import 'package:flutter/material.dart';

class DigiAppWidget extends StatelessWidget {
  const DigiAppWidget({
    super.key,
    required this.wi,
  });

  final double wi;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wi,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          physics: NeverScrollableScrollPhysics(),
          itemCount: appModel.length + 1,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return index == appModel.length
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 29,
                        backgroundColor: Colors.grey.shade400,
                        child: Text(
                          '...',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                      Text(
                        'بیشتر',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(appModel[index].src),
                        //minRadius: 35,
                        //maxRadius: 45,
                        child: Text(
                          index.toString(),
                        ),
                      ),
                      Text(
                        appModel[index].text,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
