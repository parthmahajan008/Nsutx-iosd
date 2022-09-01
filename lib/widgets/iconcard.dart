import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Iconcard extends StatelessWidget {
  final Widget pageRoute;
  final IconData icondata;
  final String title;
  const Iconcard(
      {Key? key,
      required this.pageRoute,
      required this.icondata,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      // width: 40,
      child: Column(
        children: [
          CircleAvatar(
            // backgroundColor: Colors.blueAccent.withOpacity(0.6),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.blueGrey.withOpacity(0.7),
                // gradient: LinearGradient(
                //   colors: [
                //     Colors.blue.withOpacity(0.9),
                //     Colors.white.withOpacity(0.5)
                //   ],
                // ),
              ),
              child: IconButton(
                icon: Icon(icondata),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return pageRoute;
                    },
                  ),
                ),
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
