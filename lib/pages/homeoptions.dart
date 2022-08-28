import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nsutx/pages/RegisteredCourses.dart';

class homemain extends StatefulWidget {
  const homemain({Key? key}) : super(key: key);

  @override
  State<homemain> createState() => _homemainState();
}

class _homemainState extends State<homemain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return RegisteredCoursesPage();
              },
            ),
          );
        },
      ),
    );
  }
}
