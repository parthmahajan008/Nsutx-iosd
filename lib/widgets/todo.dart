import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kCardColor = Color.fromARGB(255, 211, 123, 123);
const kHourColor = Color.fromARGB(255, 19, 27, 32);
const kBGColor = Color.fromARGB(255, 0, 0, 0);

const kTextColor = Color.fromARGB(255, 0, 0, 0);

const kCalendarDay = TextStyle(
  color: kTextColor,
  fontSize: 16.0,
);

class Homework {
  final String title;
  final DateTime dueTime;
  bool isDone = false;

  Homework({required this.title, required this.dueTime});
}

List<Homework> recentHomeworks = [
  Homework(
    title: "Planimetric Exercises",
    dueTime: DateTime.parse("2020-06-08 10:30:00"),
  ),
  Homework(
    title: "Visicosity Exercises",
    dueTime: DateTime.parse("2020-06-09 14:30:00"),
  ),
];

class RecentHomeworks extends StatefulWidget {
  const RecentHomeworks({Key? key}) : super(key: key);

  @override
  RecentHomeworksState createState() => RecentHomeworksState();
}

class RecentHomeworksState extends State<RecentHomeworks> {
  DateFormat dateFormat = DateFormat("hh:mm a");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: recentHomeworks.length,
      itemBuilder: (BuildContext context, int index) {
        Homework homework = recentHomeworks[index];
        return Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
              height: 100.0,
              width: 341.0,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.shade100,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        homework.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.circle_notifications,
                            color: Theme.of(context).accentColor,
                            size: 17.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "${DateTime.now().weekday == homework.dueTime.weekday ? "Today" : DateFormat.EEEE().format(homework.dueTime)}, ${dateFormat.format(homework.dueTime)}",
                            style: const TextStyle(
                              color: kTextColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  _todoButton(homework),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  _todoButton(Homework homework) {
    return RaisedButton(
      onPressed: () {
        setState(() {
          homework.isDone = !homework.isDone;
        });
      },
      shape: CircleBorder(
        side: BorderSide(color: Theme.of(context).colorScheme.secondary),
      ),
      color:
          homework.isDone ? Theme.of(context).accentColor : Colors.transparent,
      child:
          homework.isDone ? const Icon(Icons.check, color: Colors.white) : null,
    );
  }
}
