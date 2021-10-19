import 'package:flutter/material.dart';
import 'package:online_course/util/theme.dart';

class ClassItem extends StatelessWidget {
  final String className;
  final String classImage;
  final String classCourse;

  const ClassItem(
      {required this.className,
      required this.classImage,
      required this.classCourse});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 120.0,
      width: 120.0,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(classImage, height: 42.0),
          SizedBox(height: 15.0),
          Text(className,
              style: blackTextStyle.copyWith(
                  fontSize: 12.0, fontWeight: FontWeight.bold)),
          Text(classCourse, style: greyTextStyle.copyWith(fontSize: 10.0)),
        ],
      ),
    );
  }
}
