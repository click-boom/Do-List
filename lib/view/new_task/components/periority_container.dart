

import 'package:flutter/material.dart';

import '../../../res/constants.dart';

class PeriorityContainer extends StatelessWidget {
  final String text;
  final bool selected;

  const PeriorityContainer(
      {super.key, required this.text, required this.selected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.all(selected ? 3 : 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: selected ? blue : Colors.black12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? inputFill : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: const TextStyle(color: darkAccentBlue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}