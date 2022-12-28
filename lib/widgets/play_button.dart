import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlayButton extends StatelessWidget {
  PlayButton({required this.icon, required this.isSelected});
  final IconData icon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFFf8f8f8),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: isSelected == true ? Colors.grey[300] : Colors.black,
      ),
    );
  }
}
