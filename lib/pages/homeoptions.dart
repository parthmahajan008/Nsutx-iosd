import 'package:flutter/material.dart';
import 'package:nsutx/pages/RegisteredCourses.dart';
import 'package:nsutx/pages/pages%20with%20appbar/profilewithappbar.dart';
import 'package:nsutx/pages/prevyearpapers.dart';
import 'package:nsutx/pages/profile.dart';
import 'package:nsutx/widgets/homegrid.dart';
import 'package:nsutx/widgets/iconcard.dart';
import 'package:nsutx/widgets/todo.dart';
import 'package:progress_indicator/progress_indicator.dart';

import '../widgets/attendancepercentage.dart';

class homemain extends StatefulWidget {
  const homemain({Key? key}) : super(key: key);

  @override
  State<homemain> createState() => _homemainState();
}

class _homemainState extends State<homemain> {
  // final List<IconData> icondata = [
  //   Icons.person,
  //   Icons.present_to_all,
  //   Icons.check_box
  // ];
  // final List<String> titledata = ["Profile", "Attendance", "Todo"];
  // final List<Widget> widgetdata = [
  //   const Myprofile(),
  //   const Myprofile(),
  //   const Myprofile()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
                shadowColor: Colors.blue,
                margin: const EdgeInsets.all(10),
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Homegrid()),
            const NextClass(),
            // Container(height: 170, child: const RecentHomeworks()),
          ],
        ),
      ),
    );
  }
}

class NextClass extends StatelessWidget {
  const NextClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Next Class",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
            child: Text(
              "Thursday, Sept 1",
              // textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "10:00\n am",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                    child: Text(
                      "Web Technology",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                    child: Text("CDCSC04"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                    child: Text("GF3-CSE-2022, SATBIR Jain"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                    child: Text("Room 5024"),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
