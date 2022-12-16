import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HorizontalListview extends StatefulWidget {
  HorizontalListview({required this.courseName, super.key});

  String courseName;

  @override
  State<HorizontalListview> createState() => _HorizontalListviewState();
}

class _HorizontalListviewState extends State<HorizontalListview> {
  bool myvalue = false;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: InkWell(
          onTap: () {
            setState(() {
              myvalue = !myvalue;
            });
          },
          child: Container(
            // container size increase or decrease according to content
            decoration: BoxDecoration(
                color: myvalue == false ? Color(0xFF7fcae5) : Colors.black,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 1.5)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.courseName,
                style: TextStyle(color: Colors.white),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
