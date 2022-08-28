import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nsutx/initialpages/register.dart';

class Fabmenu extends StatelessWidget {
  Fabmenu({Key? key}) : super(key: key);
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.pink;
    return FabCircularMenu(
      key: fabKey,
      // Cannot be `Alignment.center`
      alignment: Alignment.bottomRight,
      ringColor: Colors.white.withAlpha(25),
      ringDiameter: 500.0,
      ringWidth: 150.0,
      fabSize: 64.0,
      fabElevation: 8.0,
      fabIconBorder: CircleBorder(),
      // Also can use specific color based on wether
      // the menu is open or not:
      fabOpenColor: Colors.pink.shade100,
      // fabCloseColor: Colors.white
      // These properties take precedence over fabColor
      fabColor: Colors.white,
      fabOpenIcon: const Icon(Icons.menu, color: primaryColor),
      fabCloseIcon: const Icon(Icons.close, color: primaryColor),
      fabMargin: const EdgeInsets.all(16.0),
      animationDuration: const Duration(milliseconds: 800),
      animationCurve: Curves.easeInCirc,
      // onDisplayChange: (isOpen) {},
      children: <Widget>[
        RawMaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyRegister()));
            fabKey.currentState!.close();
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: "Courses",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                WidgetSpan(
                  child: Icon(Icons.book, size: 20),
                ),
              ],
            ),
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            fabKey.currentState!.close();
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: "Result",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                WidgetSpan(
                  child: Icon(Icons.school_sharp, size: 20),
                ),
              ],
            ),
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyRegister()));
            fabKey.currentState!.close();
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: "Profile",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                WidgetSpan(
                  child: Icon(Icons.person, size: 20),
                ),
              ],
            ),
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            fabKey.currentState!.close();
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: "unknown",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                WidgetSpan(
                  child: Icon(Icons.query_stats, size: 20),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
