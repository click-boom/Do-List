import 'package:flutter/material.dart';
import 'package:todo/res/constants.dart';


class BackColors extends StatelessWidget {
  const BackColors({super.key});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Container(
      color: background,
      margin: const EdgeInsets.only(top: 30),
    );
  }
}