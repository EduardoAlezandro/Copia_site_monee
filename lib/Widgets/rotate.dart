import 'dart:math';

import 'package:flutter/material.dart';

class Rotate extends StatefulWidget {
  const Rotate({Key? key}) : super(key: key);

  @override
  _RotateState createState() => _RotateState();
}

class _RotateState extends State<Rotate> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    setRotation(90);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void setRotation(int degrees) {
    final angle = degrees * pi / 180;
    animation = Tween<double>(begin: 0, end: angle).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return iconRotate(animation, controller);
  }
}

iconRotate(animation, controller) {
  Container(
      color: Colors.black,
      width: 50,
      height: 50,
      child: AnimatedBuilder(
        animation: animation,
        child: GestureDetector(
          onTap: () {
            controller.forward(from: 0);
          },
          child: Icon(
            Icons.arrow_downward_outlined,
            size: 40,
          ),
        ),
        builder: (context, child) => Transform.rotate(
          angle: animation.value,
        ),
      ));
}
