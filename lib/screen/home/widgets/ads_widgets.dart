import 'package:digikala_clone/models/slider_page_models.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdsWidget extends StatefulWidget {
  AdsWidget({
    super.key,
    required this.he,
  });

  final double he;

  @override
  State<AdsWidget> createState() => _AdsWidgetState();
}

class _AdsWidgetState extends State<AdsWidget> {
  final controller =
      PageController(viewportFraction: .9, keepPage: true, initialPage: 1);

  final pages = List.generate(
    5,
    (index) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.shade300,
      ),
      margin: EdgeInsets.only(top: 5, left: 16),
      child: Builder(builder: (context) {
        return Container(
          height: 80,
          width: 200,
          child: Builder(builder: (context) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    sliderPage[index].src.toString(),
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sliderPage[index].text0 != ''
                          ? Text(
                              sliderPage[index].text0!,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )
                          : Container(),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        sliderPage[index].title!,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        sliderPage[index].text1!,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 26,
                        child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.white.withOpacity(0.5);
                                }
                                return Colors.white;
                              },
                            ),
                          ),
                          onPressed: sliderPage[index].pressl,
                          child: Text(
                            sliderPage[index].text2!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        );
      }),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.he * .22,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          PageView.builder(
            controller: controller,
            // itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(bottom: 8, left: 65),
              child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: JumpingDotEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  jumpScale: .8,
                  verticalOffset: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
