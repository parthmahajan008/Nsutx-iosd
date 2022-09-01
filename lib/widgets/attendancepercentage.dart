import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nsutx/widgets/countdownpainter.dart';
// import 'package:progress_indicator/progress_indicator.dart';
import 'package:intl/intl.dart';

const colorCard = Color.fromARGB(255, 255, 255, 255);
const hourcolor = Color.fromARGB(255, 255, 7, 7);
const colorBG = Color.fromARGB(255, 226, 226, 226);

var colortext = Colors.blueGrey.withOpacity(0.8);

var textstylecalender = TextStyle(
  color: colortext,
  fontSize: 16.0,
);

class Alert {
  final String title;
  final String subject;
  final String time;

  Alert({required this.title, required this.subject, required this.time});
}

List<Alert> attnList = [
  Alert(
    title: "Web Technology",
    subject: "CDCSC05",
    time: "Chill , you are in\nthe safe Zone",
  ),
  Alert(
    title: "Design and Analysis\nof Algorithms",
    subject: "CDCSC06",
    time: "You gotta attend\nmore classes",
  ),
  Alert(
    title: "Computer Architecture",
    subject: "CDCSC07",
    time: "You gotta end attend\nmore Classes",
  ),
  Alert(
    title: "Microprocessor and\nMicrocontroller",
    subject: "CDCSC08",
    time: "Chill, you are in\nthe safe Zone",
  ),
];

class Attendance extends StatelessWidget {
  const Attendance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat("hh:mm a");
    // return Scaffold(
    //   extendBodyBehindAppBar: true,
    //   body:
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: attnList.length,
        itemBuilder: (BuildContext context, int index) {
          Alert alert = attnList[index];
          List<int> hoursLeft = [78, 68, 45, 89];
          int hoursLeft_ =
              hoursLeft[index] < 0 ? -hoursLeft[index] : hoursLeft[index];
          double percent = hoursLeft_ / 100;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                height: 146.0,
                width: 15.0,
                decoration: BoxDecoration(
                  // boxShadow: BoxShadow(color: Colors.amber),
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
                height: 146.0,
                width: 315.0,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          alert.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
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
                              "${attnList[index].time}",
                              style: TextStyle(
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
                              style: TextStyle(
                                color: colortext,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 15,
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
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "$hoursLeft_ %",
                                  style: TextStyle(
                                    color: _getColor(context, percent),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              // Text(
                              //   "",
                              //   style: TextStyle(
                              //     color: _getColor(context, percent),
                              //     fontSize: 13.0,
                              //   ),
                              // ),
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
