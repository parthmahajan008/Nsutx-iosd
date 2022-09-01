import 'package:flutter/material.dart';
import 'package:nsutx/pages/RegisteredCourses.dart';
import 'package:nsutx/pages/homeoptions.dart';
import 'package:nsutx/pages/profile.dart';
import 'package:nsutx/widgets/attendancepercentage.dart';

class Mypages extends StatefulWidget {
  const Mypages({Key? key}) : super(key: key);

  @override
  State<Mypages> createState() => _Mypages();
}

class _Mypages extends State<Mypages> {
  int _selectedIndex = 0;
  final _pageViewController = PageController();
  //PageController _controller = PageController(initialPage: 0);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = [
    // Container(
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     border: Border(
    //       top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
    //     ),
    //     // border: Border.all(color: Colors.black.withOpacity(0.1)),
    //     borderRadius: BorderRadius.circular(50),
    //     // boxShadow: const [
    //     //   BoxShadow(
    //     //      blurRadius: 25.0,
    //     //   )
    //     // ],
    //   ),
    // ),
    homemain(),
    Attendance(),
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
        ),
        // border: Border.all(color: Colors.black.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(50),
        // boxShadow: const [
        //   BoxShadow(
        //     blurRadius: 25.0,
        //   )
        // ],
      ),
    ),
    const Myprofile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageViewController,
        children: _widgetOptions,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          backgroundBlendMode: BlendMode.clear,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        height: 60,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                // backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
                // backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
                // backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
                // backgroundColor: Colors.pink,
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.pinkAccent.withOpacity(0.7),
            selectedItemColor: Colors.pink,
            onTap: (index) {
              _pageViewController.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceInOut);
            },
          ),
        ),
      ),
    );
  }
}
