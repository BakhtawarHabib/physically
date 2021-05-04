import 'package:first_api/services/color.dart';
import 'package:flutter/material.dart';

import 'genderclass.dart';

class CustomRatio3 extends StatefulWidget {
  Gender _gender;

  CustomRatio3(this._gender);

  @override
  _CustomRatio3State createState() => _CustomRatio3State();
}

class _CustomRatio3State extends State<CustomRatio3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
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
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: txtcolor.withOpacity(0.2)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  shape: BoxShape.circle),
              child: Image.asset(
                widget._gender.img,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              widget._gender.name,
              style: TextStyle(
                  color: widget._gender.isSelected ? Colors.white : Colors.grey,
                  fontSize: 16,
                  fontFamily: 'Montserrat'),
            )
          ],
        ),
      ),
    );
  }
}
