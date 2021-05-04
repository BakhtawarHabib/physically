import 'package:first_api/services/color.dart';
import 'package:flutter/material.dart';

const double _kMyLinearProgressIndicatorHeight = 6.0;

class MyLinearProgressIndicator extends LinearProgressIndicator
    implements PreferredSizeWidget {
  MyLinearProgressIndicator({
    Key key,
    double value,
    Color backgroundColor,
  }) : super(
          key: key,
          value: 0.2,
          backgroundColor: txtcolor,
          valueColor: new AlwaysStoppedAnimation<Color>(btncolor),
        ) {
    preferredSize = Size(double.infinity, _kMyLinearProgressIndicatorHeight);
  }

  @override
  Size preferredSize;
}
