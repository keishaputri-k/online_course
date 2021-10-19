import 'package:flutter/material.dart';
import 'package:online_course/util/theme.dart';

class CourseItem extends StatelessWidget {
  final String courseName;
  final String courseImage;
  final String courseRating;

  const CourseItem(
      {required this.courseName,
      required this.courseImage,
      required this.courseRating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
              child: Image.asset(courseImage)),
          SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Free',
                    style: greenTextStyle.copyWith(
                        fontSize: 12.0, fontWeight: FontWeight.bold)),
                Text(courseName,
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 12.0)),
                SizedBox(height: 7.0),
                Row(
                  children: [
                    Image.asset('assets/images/stars.png', width: 80.0),
                    Text(courseRating, style: greyTextStyle.copyWith(fontSize: 10.0))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
