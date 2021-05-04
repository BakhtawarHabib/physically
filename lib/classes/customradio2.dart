import 'package:first_api/services/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'genderclass.dart';

class CustomRadio2 extends StatefulWidget {
  Gender _gender;

  CustomRadio2(this._gender);

  @override
  _CustomRadio2State createState() => _CustomRadio2State();
}

class _CustomRadio2State extends State<CustomRadio2> {
  List text = [
    "Little / No exercise",
    'Light exercise',
    "3-5 days per week",
    "6-7 days per week",
    "Very active & physical job"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: ScreenUtil().setWidth(330),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color:
              widget._gender.isSelected ? btncolor : txtcolor.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget._gender.img,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget._gender.name,
              style: TextStyle(
                  color: widget._gender.isSelected ? Colors.white : Colors.grey,
                  fontSize: ScreenUtil().setSp(
                    30,
                  ),
                  fontFamily: 'Montserrat'),
            )
          ],
        ),
      ),
    );
  }
}
