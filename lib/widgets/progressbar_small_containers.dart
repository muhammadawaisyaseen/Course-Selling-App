import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProgressBarListview extends StatefulWidget {
  ProgressBarListview(
      {required this.isSelected, required this.onFunction, super.key});

  bool isSelected;
  VoidCallback onFunction;

  @override
  State<ProgressBarListview> createState() => _ProgressBarListviewState();
}

class _ProgressBarListviewState extends State<ProgressBarListview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: UnconstrainedBox(
        child: GestureDetector(
          onTap: widget.onFunction,
          child: Container(
            height: 6,
            width: 46,
            decoration: BoxDecoration(
                color:  widget.isSelected == true ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    );
  }
}
