import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class RegisteredCourseswidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final String instituteapprovalstatus;
  final int section;
  final bool studentApprovalStatus;
  final String courseType;
  final int credits;
  final int group;
  final String exmatype;
  const RegisteredCourseswidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.instituteapprovalstatus = "Not Approved",
    this.section = 1,
    this.group = 1,
    this.studentApprovalStatus = false,
    this.courseType = "Core",
    this.credits = 4,
    this.exmatype = "regular",
  }) : super(key: key);

  @override
  State<RegisteredCourseswidget> createState() =>
      _RegisteredCourseswidgetState();
}

class _RegisteredCourseswidgetState extends State<RegisteredCourseswidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _index = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(1),
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue.withOpacity(0.4),
          ),
        ),
        Card(
          elevation: 5,
          shadowColor: Colors.blue,
          child: Column(
            children: [
              Container(
                height: 100.0,
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    Card(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3.0, vertical: 0),
                          child: Text(
                            widget.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: Text(
                            widget.subtitle,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 3.0, vertical: 12),
                              child: Text(
                                "Institute Approval Status",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              child: Text(
                                " :  ${widget.instituteapprovalstatus}",
                                style: (widget.instituteapprovalstatus ==
                                        "Not Approved")
                                    ? const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red,
                                      )
                                    : const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.green,
                                      ),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                    Card(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(2),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.grey.shade100,
                                border: Border.all(color: Colors.grey),
                              ),
                              // width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Student\nApproval\nStatus',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.studentApprovalStatus
                                      .toString()
                                      .toUpperCase()),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.grey.shade100,
                                border: Border.all(color: Colors.grey),
                              ),
                              // width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Section/\nBatch',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.section.toString().toUpperCase()),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.grey.shade100,
                                border: Border.all(color: Colors.grey),
                              ),
                              // width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Group/\nTut',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.group.toString().toUpperCase()),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ////////////////////////////////////////////////////////
                    Card(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(2),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.grey.shade100,
                                border: Border.all(color: Colors.grey),
                              ),
                              // width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Course Type',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.courseType
                                      .toString()
                                      .toUpperCase()),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.grey.shade100,
                                border: Border.all(color: Colors.grey),
                              ),
                              // width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Credits',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.credits.toString().toUpperCase()),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.grey.shade100,
                                border: Border.all(color: Colors.grey),
                              ),
                              // width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Exam Type',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      widget.exmatype.toString().toUpperCase()),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: TabBar(
                    isScrollable: true,
                    indicator: DotIndicator(
                      color: Colors.black,
                      distanceFromCenter: 16,
                      radius: 3,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    physics: const BouncingScrollPhysics(),
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        child: Text(
                          " ",
                          style: TextStyle(
                            fontFamily: "BarlowBold",
                          ),
                        ),
                      ),
                      Tab(
                          child: Text(
                        " ",
                        style: TextStyle(
                          fontFamily: "BarlowBold",
                        ),
                      )),
                      Tab(
                          child: Text(
                        " ",
                        style: TextStyle(
                          fontFamily: "BarlowBold",
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 200, // card height
              //   child: PageView.builder(
              //     itemCount: 4,
              //     controller: PageController(),
              //     onPageChanged: (int index) => setState(() => _index = index),
              //     itemBuilder: (_, i) {
              //       return Transform.scale(
              //         scale: i == _index ? 1 : 0.9,
              //         child: Card(
              //           // color: Colors.yellow.shade100,
              //           elevation: 4,
              //           shadowColor: Color.fromARGB(255, 234, 0, 78),
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(20)),
              //           child: Center(
              //             child: Text(
              //               "Card ${i + 1}",
              //               style: TextStyle(fontSize: 32),
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
