import 'package:flutter/material.dart';
import 'package:todo/res/constants.dart';
class IconContainer extends StatelessWidget {
  final Widget widget;
  const IconContainer({super.key, required this.widget});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Container(
      height: 60,
      width: size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: lightbackground,
        border: Border.all(
          color: blue
        ),
          borderRadius: BorderRadius.circular(30),
          
      ),
      child: widget,
    );
  }
}
