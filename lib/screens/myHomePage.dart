import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7fcae5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Color(0xFFcedfe0),
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/awais.jpg"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
