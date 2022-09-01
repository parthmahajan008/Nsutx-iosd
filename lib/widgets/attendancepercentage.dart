import 'package:flutter/material.dart';
import 'package:nsutx/widgets/countdownpainter.dart';
// import 'package:progress_indicator/progress_indicator.dart';
import 'package:intl/intl.dart';

const colorCard = Color.fromARGB(255, 255, 255, 255);
const hourcolor = Color.fromARGB(255, 255, 7, 7);
const colorBG = Color.fromARGB(255, 52, 83, 147);

const colortext = Color.fromARGB(255, 0, 141, 229);

const textstylecalender = TextStyle(
  color: colortext,
  fontSize: 16.0,
);

class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({required this.title, required this.subject, required this.time});
}

List<Alert> attnList = [
  Alert(
    title: "Web Technology",
    subject: "CDCSC05",
    time: DateTime.parse("2022-09-01 10:30:00"),
  ),
  Alert(
    title: "Design and Analysis \nof Algorithms",
    subject: "CDCSC06",
    time: DateTime.parse("2020-09-06 14:30:00"),
  ),
  Alert(
    title: "Computer Architecture",
    subject: "CDCSC07",
    time: DateTime.parse("2020-06-06 14:30:00"),
  ),
  Alert(
    title: "Microprocessor and Microcontroller",
    subject: "CDCSC08",
    time: DateTime.parse("2020-06-06 14:30:00"),
  ),
];

class Attendance extends StatelessWidget {
  const Attendance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat("hh:mm a");
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: attnList.length,
          itemBuilder: (BuildContext context, int index) {
            Alert alert = attnList[index];
            int hoursLeft = DateTime.now().difference(alert.time).inHours;
            hoursLeft = hoursLeft < 0 ? -hoursLeft : 0;
            double percent = hoursLeft / 48;

            return Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 30.0),
                  height: 130.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30.0),
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  height: 130.0,
                  width: 326.0,
                  decoration: const BoxDecoration(
                    color: colorCard,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            alert.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.circle_notifications,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 17.0,
                              ),
                              const SizedBox(width: 10.0),
                              Text(
                                "${DateTime.now().weekday == alert.time.weekday ? "Today" : DateFormat.EEEE().format(alert.time)}, ${dateFormat.format(alert.time)}",
                                style: const TextStyle(
                                  color: colortext,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.receipt,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 17.0,
                              ),
                              const SizedBox(width: 10.0),
                              Text(
                                alert.subject,
                                style: const TextStyle(
                                  color: colortext,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0.0,
                        child: CustomPaint(
                          foregroundPainter: CountdownPainter(
                            bgColor: colorBG,
                            lineColor: _getColor(context, percent),
                            percent: percent,
                            width: 4.0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "$hoursLeft",
                                  style: TextStyle(
                                    color: _getColor(context, percent),
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "hours left",
                                  style: TextStyle(
                                    color: _getColor(context, percent),
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  _getColor(BuildContext context, double percent) {
    if (percent >= 0.4) {
      return Theme.of(context).colorScheme.secondary;
    }

    return hourcolor;
  }
}

    // return Container(
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(20),
    //       // shape: BoxShape.circle,
    //       border: Border.all(width: 1, color: Colors.pink)),
    //   height: 150,
    //   child: SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child: Row(
    //       // crossAxisAlignment: CrossAxisAlignment.start,
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Center(
    //           child: Stack(
    //             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               Positioned(
    //                 child: Container(
    //                   height: 150,
    //                   width: 150,
    //                   child: CircularProgress(
    //                     percentage: 10.0,
    //                     color: Colors.black,
    //                     backColor: Colors.pink,
    //                     gradient: const LinearGradient(
    //                         colors: [Colors.blue, Colors.red]),
    //                     showPercentage: true,
    //                     textStyle:
    //                         const TextStyle(color: Colors.orange, fontSize: 10),
    //                     stroke: 5,
    //                     round: true,
    //                   ),
    //                 ),
    //               ),
    //               const Positioned(
    //                 left: 50,
    //                 bottom: 28,
    //                 child: Text(
    //                   "CDCS04",
    //                   style: TextStyle(fontWeight: FontWeight.bold),
    //                 ),
    //               ),
    //               const Positioned(
    //                 left: 50,
    //                 bottom: 10,
    //                 child: Text(
    //                   "CDCS04",
    //                   style: TextStyle(fontWeight: FontWeight.bold),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Stack(
    //           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Positioned(
    //               child: Container(
    //                 height: 150,
    //                 width: 150,
    //                 child: CircularProgress(
    //                   percentage: 10.0,
    //                   color: Colors.black,
    //                   backColor: Colors.pink,
    //                   gradient: const LinearGradient(
    //                       colors: [Colors.blue, Colors.red]),
    //                   showPercentage: true,
    //                   textStyle:
    //                       const TextStyle(color: Colors.orange, fontSize: 10),
    //                   stroke: 5,
    //                   round: true,
    //                 ),
    //               ),
    //             ),
    //             const Positioned(
    //               left: 50,
    //               bottom: 28,
    //               child: Text(
    //                 "CDCS04",
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //             const Positioned(
    //               left: 50,
    //               bottom: 10,
    //               child: Text(
    //                 "CDCS04",
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //           ],
    //         ),
    //         Stack(
    //           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Positioned(
    //               child: Container(
    //                 height: 150,
    //                 width: 150,
    //                 child: CircularProgress(
    //                   percentage: 10.0,
    //                   color: Colors.black,
    //                   backColor: Colors.pink,
    //                   gradient: const LinearGradient(
    //                       colors: [Colors.blue, Colors.red]),
    //                   showPercentage: true,
    //                   textStyle:
    //                       const TextStyle(color: Colors.orange, fontSize: 10),
    //                   stroke: 5,
    //                   round: true,
    //                 ),
    //               ),
    //             ),
    //             const Positioned(
    //               left: 50,
    //               bottom: 28,
    //               child: Text(
    //                 "CDCS04",
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //             const Positioned(
    //               left: 50,
    //               bottom: 10,
    //               child: Text(
    //                 "CDCS04",
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );

