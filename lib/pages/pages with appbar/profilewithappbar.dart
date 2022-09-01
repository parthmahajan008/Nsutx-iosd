import 'package:flutter/material.dart';

class Myprofilewithappbar extends StatelessWidget {
  const Myprofilewithappbar({Key? key}) : super(key: key);

  Widget cardtile(String title, String subtitle) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 8,
        shadowColor: const Color.fromARGB(255, 228, 0, 76),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                // textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            'My Profile',
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
      body: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(imageUrl),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  cardtile("Student Name", "Parth Mahajan"),
                  cardtile("Student Id", "2021UCD2125"),
                  cardtile("Date of Birth ", "08-09-2003"),
                  cardtile("Branch Name", "Computer Science and Engineering"),
                  cardtile("Section", "1"),
                  cardtile("Gender", "M"),
                  cardtile("Category", "M"),
                  cardtile("Degree", "B.Tech."),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
