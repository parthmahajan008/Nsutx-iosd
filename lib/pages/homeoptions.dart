import 'package:flutter/material.dart';
import 'package:nsutx/pages/RegisteredCourses.dart';
import 'package:nsutx/pages/pages%20with%20appbar/profilewithappbar.dart';
import 'package:nsutx/pages/prevyearpapers.dart';
import 'package:nsutx/pages/profile.dart';
import 'package:nsutx/widgets/homegrid.dart';
import 'package:nsutx/widgets/iconcard.dart';
import 'package:progress_indicator/progress_indicator.dart';

import '../widgets/attendancepercentage.dart';

class homemain extends StatefulWidget {
  const homemain({Key? key}) : super(key: key);

  @override
  State<homemain> createState() => _homemainState();
}

class _homemainState extends State<homemain> {
  final List<IconData> icondata = [
    Icons.person,
    Icons.present_to_all,
    Icons.check_box
  ];
  final List<String> titledata = ["Profile", "Attendance", "Todo"];
  final List<Widget> widgetdata = [
    const Myprofile(),
    const Myprofile(),
    const Myprofile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          // Attendance(),
          Homegrid(),
        ],
      ),
    );
  }
}
