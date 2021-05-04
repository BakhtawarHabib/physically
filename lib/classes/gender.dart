// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// import 'customradio.dart';
// import 'genderclass.dart';

// class GenderSelector extends StatefulWidget {
//   @override
//   _GenderSelectorState createState() => _GenderSelectorState();
// }

// class _GenderSelectorState extends State<GenderSelector> {
//   List<Gender> genders = new List<Gender>();

//   @override
//   void initState() {
//     super.initState();
//     genders.add(new Gender("Male", MdiIcons.genderMale, false));
//     genders.add(new Gender("Female", MdiIcons.genderFemale, false));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         itemCount: genders.length,
//         itemBuilder: (context, index) {
//           return InkWell(
//             splashColor: Colors.pinkAccent,
//             onTap: () {
//               setState(() {
//                 genders.forEach((gender) => gender.isSelected = false);
//                 genders[index].isSelected = true;
//               });
//             },
//             child: CustomRadio(genders[index]),
//           );
//         });
//   }
// }
