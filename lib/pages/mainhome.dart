// ignore_for_file: unused_field, camel_case_types

import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:nsutx/pages/pagescontainer.dart';
import 'package:nsutx/initialpages/register.dart';
import 'package:nsutx/widgets/sidebar.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'fabmenu.dart';

class mainhome extends StatefulWidget {
  const mainhome({Key? key}) : super(key: key);

  @override
  State<mainhome> createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final divider = Divider(color: Colors.white.withOpacity(0.3), height: 1);
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    hidestatusbar();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 2);
  }

  //  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 3: Settings',
  //     style: optionStyle,
  //   ),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  hidestatusbar() =>
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
      ));

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.pink;
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      // floatingActionButton: Fabmenu(),
      // Builder(
      //   builder: (context) =>
      //   FabCircularMenu(
      //     key: fabKey,
      //     // Cannot be `Alignment.center`
      //     alignment: Alignment.bottomRight,
      //     ringColor: Colors.white.withAlpha(15),
      //     ringDiameter: 500.0,
      //     ringWidth: 150.0,
      //     fabSize: 64.0,
      //     fabElevation: 0.0,
      //     fabIconBorder: CircleBorder(),
      //     // Also can use specific color based on wether
      //     // the menu is open or not:
      //     fabOpenColor: Colors.pink.shade100,
      //     // fabCloseColor: Colors.white
      //     // These properties take precedence over fabColor
      //     fabColor: Colors.white,
      //     fabOpenIcon: const Icon(Icons.menu, color: primaryColor),
      //     fabCloseIcon: const Icon(Icons.close, color: primaryColor),
      //     fabMargin: const EdgeInsets.all(16.0),
      //     animationDuration: const Duration(milliseconds: 800),
      //     animationCurve: Curves.slowMiddle,
      //     // onDisplayChange: (isOpen) {},
      // children: <Widget>[
      //   RawMaterialButton(
      //     onPressed: () {
      //       Navigator.push(
      //           context,
      // MaterialPageRoute(
      //     builder: (context) => const MyRegister()));
      //       fabKey.currentState!.close();
      //     },
      //     shape: const CircleBorder(),
      //     padding: const EdgeInsets.all(24.0),
      //     child: RichText(
      //       text: const TextSpan(
      //         children: [
      //           TextSpan(
      //               text: "Courses",
      //               style: TextStyle(fontSize: 20, color: Colors.grey)),
      //           WidgetSpan(
      //             child: Icon(Icons.book, size: 20),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   RawMaterialButton(
      //     onPressed: () {
      //       fabKey.currentState!.close();
      //     },
      //     shape: const CircleBorder(),
      //     padding: const EdgeInsets.all(24.0),
      //     child: RichText(
      //       text: const TextSpan(
      //         children: [
      //           TextSpan(
      //               text: "Result",
      //               style: TextStyle(fontSize: 20, color: Colors.black)),
      //           WidgetSpan(
      //             child: Icon(Icons.school_sharp, size: 20),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   RawMaterialButton(
      //     onPressed: () {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //               builder: (context) => const MyRegister()));
      //       fabKey.currentState!.close();
      //     },
      //     shape: const CircleBorder(),
      //     padding: const EdgeInsets.all(24.0),
      //     child: RichText(
      //       text: const TextSpan(
      //         children: [
      //           TextSpan(
      //               text: "Profile",
      //               style: TextStyle(fontSize: 20, color: Colors.black)),
      //           WidgetSpan(
      //             child: Icon(Icons.person, size: 20),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   RawMaterialButton(
      //     onPressed: () {
      //       fabKey.currentState!.close();
      //     },
      //     shape: const CircleBorder(),
      //     padding: const EdgeInsets.all(24.0),
      //     child: RichText(
      //       text: const TextSpan(
      //         children: [
      //           TextSpan(
      //               text: "unknown",
      //               style: TextStyle(fontSize: 20, color: Colors.black)),
      //           WidgetSpan(
      //             child: Icon(Icons.query_stats, size: 20),
      //           ),
      //         ],
      //       ),
      //     ),
      //   )
      // ],
      //   ),
      // ),

      extendBodyBehindAppBar: true,
      drawer: Sidebar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
        builder: (context) => IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),),
        // Padding(
        //   padding: const EdgeInsets.only(left: 8.0),
        //   child: IconButton(
        //     onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        //     icon: const Icon(
        //       Icons.arrow_back,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.dark_mode),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Switch to Dark Mode",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  //backgroundColor: Color.fromARGB(119, 19, 23, 32),
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(200)),
                      gradient: LinearGradient(
                        colors: [
                          // Colors.blue.withOpacity(0.9),
                          Colors.pink.withOpacity(0.3),
                          Colors.purple.withOpacity(0.5)
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      //color: Color.fromARGB(255, 184, 222, 240),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          height: 4,
                          color: Colors.black,
                          // thickness: 1.5,
                        ),
                      ),
                      Text("You're in",
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      SizedBox(height: 0),
                      Text("Semester 3",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          )),
                      SizedBox(
                        width: 100,
                        child: Divider(
                          height: 4,
                          color: Colors.red,
                          thickness: 1.5,
                        ),
                      ),
                      Text("5 Semesters left...\nLive a Life to Remember",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              // boxShadow: const [
              //   BoxShadow(
              //     blurRadius: 25.0,
              //   )
              // ],
            ),
            height: 500,
            child: const Mypages(),
          )
          // Container(
          //   height: 40,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(50),
          //   ),
          //   child: TabBar(
          //     isScrollable: true,
          //     labelColor: Colors.black,
          //     indicatorColor: Colors.black,
          //     indicator: DotIndicator(
          //       color: Colors.black,
          //       distanceFromCenter: 16,
          //       radius: 3,
          //       paintingStyle: PaintingStyle.fill,
          //     ),
          //     physics: const BouncingScrollPhysics(),
          //     unselectedLabelColor: Colors.grey.shade400,
          //     controller: _tabController,
          //     tabs: const [
          //       Tab(
          //         child: Text(
          //           "Schedule",
          //           style: TextStyle(
          //             fontFamily: "BarlowBold",
          //           ),
          //         ),
          //       ),
          //       Tab(
          //           child: Text(
          //         "Attendance",
          //         style: TextStyle(
          //           fontFamily: "BarlowBold",
          //         ),
          //       )),
          //       Tab(
          //           child: Text(
          //         "Upcoming",
          //         style: TextStyle(
          //           fontFamily: "BarlowBold",
          //         ),
          //       )),
          //       Tab(
          //           child: Text(
          //         "unplanned",
          //         style: TextStyle(
          //           fontFamily: "BarlowBold",
          //         ),
          //       )),
          //       Tab(
          //           child: Text(
          //         "unplanned",
          //         style: TextStyle(
          //           fontFamily: "BarlowBold",
          //         ),
          //       )),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: 40.0,
          //   child: TabBarView(
          //     controller: _tabController,
          //     children: <Widget>[
          //       Container(
          //         decoration: BoxDecoration(color: Colors.pink.shade100),
          //       ),
          //       const Card(
          //         child: ListTile(
          //           leading: Icon(Icons.home),
          //           title: TextField(
          //             decoration:
          //                 InputDecoration(hintText: 'Search for address...'),
          //           ),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           leading: const Icon(Icons.location_on),
          //           title:
          //               const Text('Latitude: 48.09342\nLongitude: 11.23403'),
          //           trailing: IconButton(
          //               icon: const Icon(Icons.my_location), onPressed: () {}),
          //         ),
          //       ),
          //       const Card(
          //         child: ListTile(
          //           leading: Icon(Icons.home),
          //           title: TextField(
          //             decoration:
          //                 InputDecoration(hintText: 'Search for address...'),
          //           ),
          //         ),
          //       ),
          //       const Card(
          //         child: ListTile(
          //           leading: Icon(Icons.home),
          //           title: TextField(
          //             decoration:
          //                 InputDecoration(hintText: 'Search for address...'),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
