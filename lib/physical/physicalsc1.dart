import 'package:first_api/physical/widgets/CustomSlider.dart';
import 'package:first_api/physical/widgets/textdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhysActivity extends StatefulWidget {
  @override
  _PhysActivityState createState() => _PhysActivityState();
}

class _PhysActivityState extends State<PhysActivity> {
  List images = [
    "images/slide.png",
    "images/slide.png",
    "images/slide.png",
    "images/slide.png",
  ];

  @override
  Widget build(BuildContext context) {
    int _current = 0;
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(750, 1330),
        orientation: Orientation.portrait);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CustomSlider(),
                Container(
                    //color: Colors.white,
                    // height: ScreenUtil().setHeight(170),
                    width: ScreenUtil().setWidth(800),
                    padding: EdgeInsets.only(top: 273, left: 0, right: 0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Expanded(
                                    child: Text(
                                      txt1,
                                      style: TextStyle(
                                          fontSize: ScreenUtil().setSp(
                                            30,
                                          ),
                                          fontFamily: 'Montserrat'),
                                    ),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Expanded(
                                  child: Text(
                                    txt2,
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(
                                          30,
                                        ),
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                              Container(
                                height: ScreenUtil().setHeight(700),
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 6,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFF335088),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        height: 50,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "images/hint.png",
                                                height: 20,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                downdata[index],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        ScreenUtil().setSp(
                                                      30,
                                                    ),
                                                    fontFamily: 'Montserrat'),
                                              ),
                                            ),
                                          ],
                                        ));
                                  },
                                ),
                              )
                            ],
                          ),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
