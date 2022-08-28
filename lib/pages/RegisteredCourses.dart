import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../widgets/registeredcourseswidget.dart';

class RegisteredCoursesPage extends StatefulWidget {
  const RegisteredCoursesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisteredCoursesPage> createState() => _RegisteredCoursesPageState();
}

class _RegisteredCoursesPageState extends State<RegisteredCoursesPage>
    with SingleTickerProviderStateMixin {
  List<Widget> widgetlist = const [
    RegisteredCourseswidget(
      title: "CDCS04",
      subtitle: "Web Technology",
    ),
    SizedBox(
      height: 20,
    ),
    RegisteredCourseswidget(
      title: "CDCS05",
      subtitle: "Database Management Systems",
    ),
    SizedBox(
      height: 20,
    ),
    RegisteredCourseswidget(
      title: "CDCS06",
      subtitle: "Design and Analysis of Algorithms",
    ),
    SizedBox(
      height: 20,
    ),
    RegisteredCourseswidget(
      title: "CDCS07",
      subtitle: "Computer Architecture and Organisation",
    ),
    SizedBox(
      height: 20,
    ),
    RegisteredCourseswidget(
      title: "CDCS08",
      subtitle: "MicrosProcessors and MicroControllers",
    ),
    SizedBox(
      height: 20,
    ),
    RegisteredCourseswidget(
      title: "FENH003",
      subtitle: "Entrepreneurship",
    ),
    SizedBox(
      height: 20,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            'Registered Courses',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: widgetlist,
        ),
      ),
    );
  }
}
