import 'package:first_api/classes/customradio2.dart';
import 'package:first_api/classes/genderclass.dart';
import 'package:first_api/pages/Screen3.dart';
import 'package:first_api/services/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double _crossAxisSpacing = 8, _mainAxisSpacing = 12, _aspectRatio = 2;
int _crossAxisCount = 2;

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  double _progress = 0.5;
  List<Gender> genders = new List<Gender>();
  @override
  void initState() {
    super.initState();
    genders.add(new Gender("Little / No\nexercise", "images/1.png", false));
    genders.add(new Gender("Light\nexercise", "images/2.png", false));
    genders.add(new Gender("3-5 days\nper week", "images/3.png", false));
    genders.add(new Gender("6-7 days\nper week", "images/4.png", false));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: txtcolor,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "What's Your Usual Activity?",
          style: TextStyle(
            color: txtcolor,
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(
              38,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LinearProgressIndicator(
              backgroundColor: txtcolor,
              valueColor: new AlwaysStoppedAnimation<Color>(btncolor),
              value: _progress,
            ),
            Image.asset(
              'images/work.png',
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Lorem ipsum dolor sit amet, cons ectetur adipi scing elit. Dolor augue magna mauris vitae amet, aliquam. Mattis nisl.",
                style: TextStyle(
                    color: txtcolor,
                    fontWeight: FontWeight.w600,
                    wordSpacing: 3.0,
                    fontSize: ScreenUtil().setSp(
                      35,
                    ),
                    fontFamily: 'Montserrat'),
              ),
            ),
            Center(
              child: Container(
                height: ScreenUtil().setHeight(330),
                width: ScreenUtil().setWidth(700),
                child: Center(
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: genders.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              genders.forEach(
                                  (gender) => gender.isSelected = false);
                              genders[index].isSelected = true;
                            });
                          },
                          child: Center(child: CustomRadio2(genders[index])),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: _aspectRatio,
                      crossAxisCount: 2,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: ScreenUtil().setHeight(110),
                width: ScreenUtil().setWidth(340),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                alignment: Alignment.center,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("images/5.png"),
                      Text(
                        "Very active &\nphysical job",
                        style: TextStyle(
                            color: txtcolor,
                            fontSize: ScreenUtil().setSp(
                              30,
                            ),
                            fontFamily: 'Montserrat'),
                      )
                    ])),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              width: double.infinity,
              child: MaterialButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12.0),
                ),
                minWidth: ScreenUtil().setWidth(639),
                height: ScreenUtil().setHeight(80),
                child: Text('Next',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: ScreenUtil().setSp(
                        30,
                      ),
                    )),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen3()),
                  )
                },
                color: btncolor,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
