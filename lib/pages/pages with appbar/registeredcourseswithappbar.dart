import 'package:flutter/material.dart';

import '../../widgets/registeredcourseswidget.dart';

class Registered_withappbar extends StatefulWidget {
  const Registered_withappbar({
    Key? key,
  }) : super(key: key);

  @override
  State<Registered_withappbar> createState() => _Registered_withappbarState();
}

class _Registered_withappbarState extends State<Registered_withappbar>
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
