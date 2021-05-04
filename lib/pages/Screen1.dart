import 'package:first_api/classes/genderclass.dart';
import 'package:first_api/classes/progress.dart';
import 'package:first_api/pages/Screen2.dart';
import 'package:first_api/services/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../classes/customradio.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<Gender> genders = new List<Gender>();
  double _progress = 0.2;

  @override
  void initState() {
    super.initState();
    genders.add(new Gender("Male", "images/v.png", false));
    genders.add(new Gender("Female", "images/v2.png", false));
  }

  bool pressAttention = false;
  Color _myColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(750, 1330),
        orientation: Orientation.portrait);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: txtcolor,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Lets Start",
          style: TextStyle(
              color: txtcolor,
              fontFamily: 'Montserrat',
              fontSize: ScreenUtil().setSp(
                40,
              ),
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LinearProgressIndicator(
            backgroundColor: txtcolor,
            valueColor: new AlwaysStoppedAnimation<Color>(btncolor),
            value: _progress,
          ),
          Image.asset('images/gen.png'),
          Text(
            "Select your gender",
            style: TextStyle(
                color: txtcolor,
                fontSize: ScreenUtil().setSp(
                  50,
                ),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(170),
            width: ScreenUtil().setWidth(800),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: genders.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        genders.forEach((gender) => gender.isSelected = false);
                        genders[index].isSelected = true;
                      });
                    },
                    child: CustomRadio(genders[index]),
                  );
                }),
          ),
          Container(
            alignment: Alignment.bottomCenter,
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
                  MaterialPageRoute(builder: (context) => Screen2()),
                )
              },
              color: btncolor,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
