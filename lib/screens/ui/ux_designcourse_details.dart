import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/search_notif_widget.dart';

class UiUxDesignCourseDetails extends StatelessWidget {
  const UiUxDesignCourseDetails({super.key});

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
                  CircularButton(icon: Icons.search),
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
          ],
        ),
      ),
    );
  }
}
