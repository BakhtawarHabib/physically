import 'package:first_api/services/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'genderclass.dart';

class CustomRadio extends StatelessWidget {
  Gender _gender;

  CustomRadio(this._gender);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _gender.isSelected ? btncolor : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      width: ScreenUtil().setWidth(300),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: txtcolor.withOpacity(0.2)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                shape: BoxShape.circle),
            child: Image.asset(
              _gender.img,
              color: txtcolor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            _gender.name,
            style: TextStyle(
                color: _gender.isSelected ? Colors.white : Colors.grey,
                fontSize: ScreenUtil().setSp(
                  30,
                ),
                fontFamily: 'Montserrat'),
          )
        ],
      ),
    );
  }
}
