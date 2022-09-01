import 'package:flutter/material.dart';

import 'package:sidebarx/sidebarx.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final divider = Divider(color: Colors.white, height: 1);
    return SidebarX(
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: const TextStyle(color: Colors.black),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withOpacity(0.45)),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.yellow.withOpacity(0.37),
          ),
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.pinkAccent.withOpacity(0.6)],
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.white.withOpacity(0.38),
          //     blurRadius: 30,
          //   )
          // ],
        ),
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return const SizedBox(
          height: 200,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  "https://sangam.nsut.ac.in/adm/msc/assets/images/background.jpeg"),
            ),
            // Image.asset('assets/nsut.jpeg'),
          ),
        );
      },
      controller: SidebarXController(selectedIndex: 0, extended: true),
      items: const [
        SidebarXItem(icon: Icons.person, label: 'Profile'),
        SidebarXItem(icon: Icons.check, label: 'Attendance'),
        SidebarXItem(icon: Icons.timeline, label: 'Time table'),
        SidebarXItem(icon: Icons.checklist, label: 'TO DO'),
        SidebarXItem(icon: Icons.bookmark, label: 'Notices'),
        SidebarXItem(icon: Icons.book, label: 'Syllabus'),
        SidebarXItem(icon: Icons.school, label: 'PYQs'),
        SidebarXItem(icon: Icons.menu_book, label: 'Courses'),
        SidebarXItem(icon: Icons.menu_open_rounded, label: 'Results.. scary'),
        SidebarXItem(icon: Icons.build, label: 'Socities'),
        SidebarXItem(icon: Icons.account_tree, label: 'Events'),
        SidebarXItem(icon: Icons.adobe_outlined, label: 'Abouts Us'),
        SidebarXItem(icon: Icons.question_answer, label: 'FAQs'),
      ],
    );
  }
}
