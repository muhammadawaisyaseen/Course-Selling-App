import 'package:course_selling_app/widgets/play_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/search_notif_widget.dart';

class UiUxDesignCourseDetails extends StatefulWidget {
  UiUxDesignCourseDetails({super.key});

  @override
  State<UiUxDesignCourseDetails> createState() =>
      _UiUxDesignCourseDetailsState();
}

class _UiUxDesignCourseDetailsState extends State<UiUxDesignCourseDetails> {
  int tileSelectedIndex = 0;

  List<String> myTitles = [
    'UI/UX Design',
    'Typography',
    'Flutter',
    'Web Design',
    'Figma',
    'Graphics',
    'Android',
    'WordPress',
    'Desktop App',
  ];

  List<String> mySubtitles = [
    '32 Minutes - 12 Dec',
    '01 Hour - 13 Dec',
    '50 Minutes - 14 Dec',
    '02 Hours - 15 Dec',
    '32 Minutes - 12 Dec',
    '01 Hour - 13 Dec',
    '50 Minutes - 14 Dec',
    '02 Hours - 15 Dec',
    '32 Minutes - 12 Dec',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF7fcae5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircularButton(
                          icon: Icons.arrow_back_ios_new_outlined)),
                  Spacer(),
                  CircularButton(icon: Icons.calendar_month_outlined),
                  const SizedBox(
                    width: 16,
                  ),
                  CircularButton(icon: Icons.notifications),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                    children: [
                      TextSpan(text: 'UI/UX Design'),
                      TextSpan(text: '\n'),
                      TextSpan(
                          text: 'Course',
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ]),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                height: 200,
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFffffff),
                ),
                child: ListView.builder(
                  itemCount: myTitles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: ListTile(
                        onTap:() {
                            setState(() {
                              tileSelectedIndex = index;
                            });
                          },
                        visualDensity: VisualDensity(vertical: 4),
                        dense: true,
                        leading: Text(
                          '0' + (index + 1).toString(),
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          myTitles[index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(mySubtitles[index]),
                        trailing: PlayButton(
                          icon: Icons.play_arrow_rounded,
                          isSelected: tileSelectedIndex == index ? true : false,
                          // onFunction: 
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
