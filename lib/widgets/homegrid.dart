import 'package:flutter/material.dart';

import '../pages/RegisteredCourses.dart';
import '../pages/pages with appbar/profilewithappbar.dart';
import '../pages/prevyearpapers.dart';
import '../pages/profile.dart';
import 'iconcard.dart';

class Homegrid extends StatelessWidget {
  const Homegrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.all(10),
          // height: 258,
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            // border: Border.all(color: Colors.grey.shade500),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Myprofilewithappbar(),
                        icondata: Icons.account_circle,
                        title: "My Profile"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Myprofile(),
                        icondata: Icons.present_to_all,
                        title: "Attendance"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: RegisteredCoursesPage(),
                        icondata: Icons.check_box,
                        title: "ToDo"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: RegisteredCoursesPage(),
                        icondata: Icons.lock_clock,
                        title: "TimeTable"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Myprofilewithappbar(),
                        icondata: Icons.school,
                        title: "Syllabus"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: PreviousYearPapers(),
                        icondata: Icons.account_circle,
                        title: "   Previous\nYear papers"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: RegisteredCoursesPage(),
                        icondata: Icons.bar_chart,
                        title: "Result"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: RegisteredCoursesPage(),
                        icondata: Icons.notes,
                        title: "Courses"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Myprofilewithappbar(),
                        icondata: Icons.pages,
                        title: "Societies"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Myprofile(),
                        icondata: Icons.calendar_month,
                        title: "Events"),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
