import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/custom_listview.dart';
import '../widgets/search_notif_widget.dart';

List courses = [
  "java Script",
  "Design",
  "Angular",
  "firebase",
  "HTML",
  "CSS",
  "Animation",
  "Java Script",
  "Dart",
  "HTML",
  "CSS",
  "Java Script",
  "Angular",
  "Dart",
  "HTML",
  "CSS",
  "Java Script",
  "Animation",
];

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7fcae5),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFFcedfe0),
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/awais.jpg"),
                ),
                Spacer(),
                CircularButton(icon: Icons.search),
                const SizedBox(
                  width: 16,
                ),
                CircularButton(icon: Icons.notifications),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return HorizontalListview(
                    courseName: courses[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
