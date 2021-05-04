import 'package:first_api/pages/Screen1.dart';
import 'package:first_api/classes/genderclass.dart';
import 'package:first_api/pages/homepage.dart';
import 'package:first_api/physical/physicalsc1.dart';
import 'package:first_api/services/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(750, 1330),
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                fontFamily: 'Montserrat',
                textTheme:
                    Theme.of(context).textTheme.apply(bodyColor: txtcolor),
              ),
              home: PhysActivity(),
            ));
  }
}
