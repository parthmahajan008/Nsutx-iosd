import 'package:flutter/material.dart';
import 'package:nsutx/pages/pages%20with%20appbar/registeredcourseswithappbar.dart';
import 'package:nsutx/widgets/todo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../pages/RegisteredCourses.dart';
import '../pages/pages with appbar/attendance.dart';
import '../pages/pages with appbar/profilewithappbar.dart';
import '../pages/prevyearpapers.dart';
import '../pages/profile.dart';
import 'iconcard.dart';

class Homegrid extends StatelessWidget {
  launch(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw "Could Not Launch $url";
    }
  }

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
                        pageRoute: Myattendancewithappbar(),
                        icondata: Icons.check,
                        title: "Attendance"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: RecentHomeworks(),
                        icondata: Icons.check_box,
                        title: "ToDo"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Registered_withappbar(),
                        icondata: Icons.access_time,
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
                        pageRoute: Registered_withappbar(),
                        icondata: Icons.bar_chart,
                        title: "Result"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Registered_withappbar(),
                        icondata: Icons.menu_book,
                        title: "Courses"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Myprofilewithappbar(),
                        icondata: Icons.pages,
                        title: "Societies"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Myprofile(),
                        icondata: Icons.upcoming_outlined,
                        title: "Events"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            // backgroundColor: Colors.blueAccent.withOpacity(0.6),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueGrey.withOpacity(0.7),
                                // gradient: LinearGradient(
                                //   colors: [
                                //     Colors.blue.withOpacity(0.9),
                                //     Colors.white.withOpacity(0.5)
                                //   ],
                                // ),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.web),
                                onPressed: () {
                                  String url =
                                      "https://www.imsnsit.org/imsnsit/notifications.php";
                                  launch(url);
                                },
                              ),
                            ),
                          ),
                          const Text("Notices")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
