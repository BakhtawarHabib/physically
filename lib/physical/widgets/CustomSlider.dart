import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Carousel(
        autoplay: false,
        images: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/slide.png"),
                      fit: BoxFit.cover)),
              height: ScreenUtil().setHeight(600),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 0),
                          child: Image.asset(
                            "images/text.png",
                            height: 100,
                          )),
                      Divider(
                        color: Colors.white,
                        thickness: 3,
                        height: 20,
                        indent: 32,
                        endIndent: 262,
                      ),
                    ],
                  ),
                ],
              )),
          ExactAssetImage("images/slide.png"),
          ExactAssetImage("images/slide.png"),
          ExactAssetImage("images/slide.png"),
        ],
        dotSize: 10.0,
        dotHorizontalPadding: 6.0,
        dotVerticalPadding: 20,
        dotPosition: DotPosition.bottomCenter,
        dotSpacing: 13.0,
        dotColor: Color(0xff545BF6),
        dotIncreaseSize: 1.3,
        indicatorBgPadding: 20.0,
        dotIncreasedColor: Colors.white,
        dotBgColor: Colors.transparent,
      ),
    );
  }
}
