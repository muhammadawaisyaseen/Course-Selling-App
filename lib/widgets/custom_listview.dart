// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HorizontalListview extends StatefulWidget {
  HorizontalListview(
      {required this.courseName,
      required this.ontap,
      required this.isSelected,
      super.key});

  final String courseName;
  final VoidCallback ontap;
  final bool isSelected;

  @override
  State<HorizontalListview> createState() => _HorizontalListviewState();
}

class _HorizontalListviewState extends State<HorizontalListview> {


  @override
  Widget build(BuildContext context) {
    //print(widget.update);
    return UnconstrainedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: GestureDetector(
          onTap: widget.ontap,
          child: Container(
            // container size increase or decrease according to content
            decoration: BoxDecoration(
                color: widget.isSelected
                    ? Colors.black
                    : Color(0xFF7fcae5),
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
