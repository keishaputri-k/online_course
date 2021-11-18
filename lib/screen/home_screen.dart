// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course/util/articles_item.dart';
import 'package:online_course/util/class_item.dart';
import 'package:online_course/util/course_item.dart';
import 'package:online_course/util/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/hrvy.png', height: 30.0),
                    Spacer(),
                    Container(
                        padding: EdgeInsets.all(3.0),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Icon(
                          Icons.search,
                          size: 20.0,
                        )),
                    SizedBox(width: 10.0),
                    Container(
                        padding: EdgeInsets.all(3.0),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Icon(
                          Icons.notifications_none_rounded,
                          size: 20.0,
                        ))
                  ],
                ),
                SizedBox(height: 12.0),
                Text(
                  'Want to Study Class \nwhat\'s Today?',
                  style: blackTextStyle.copyWith(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClassItem(
                          className: 'Design',
                          classImage: 'assets/images/icon_design.png',
                          classCourse: '49 Course'),
                      ClassItem(
                          className: 'Soft Skill',
                          classImage: 'assets/images/icon_softskill.png',
                          classCourse: '12 Course'),
                      ClassItem(
                          className: 'Art',
                          classImage: 'assets/images/icon_art.png',
                          classCourse: '50 Course'),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                Row(
                  children: [
                    Text('Popular Course',
                        style: blackTextStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text('Show all',
                        style: blueTextStyle.copyWith(fontSize: 10.0)),
                  ],
                ),
                SizedBox(height: 12.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CourseItem(
                          courseName:
                              'UI Design : Wireframe \nto Visual Design',
                          courseImage: 'assets/images/image_wireframe.png',
                          courseRating: '(4016)'),
                      CourseItem(
                          courseName: 'UI Design : Styleguide \nwith Figma',
                          courseImage: 'assets/images/image_style.png',
                          courseRating: '(1055)'),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                Row(
                  children: [
                    Text('Articles',
                        style: blackTextStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text('Show all',
                        style: blueTextStyle.copyWith(fontSize: 10.0)),
                  ],
                ),
                Column(
                  children: [
                    ArticlesItem(
                        articlesName:
                            'How to: Work faster as \nFull Stack Designer',
                        articlesImage: 'assets/images/image_ui.png',
                        articlesCourse: 'UI Design')
                  ],
                ),
                Column(
                  children: [
                    ArticlesItem(
                        articlesName:
                        'How to: Digital Art from\nSketch',
                        articlesImage: 'assets/images/image_sketch.png',
                        articlesCourse: 'Art Course')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/icons/home_solid.svg')),
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/icons/explore_solid.svg')),
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/icons/whitelist_solid.svg'))
      //     ],
      //     onTap: (int position) {
      //       setState(() {
      //         currentPosition = position;
      //       });
      //     }),
    );
  }
}
