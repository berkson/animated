import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({Key? key, required this.controller})
      : buttonSqueeze = Tween(begin: 320.0, end: 60.0).animate(CurvedAnimation(
            parent: controller, curve: const Interval(0.0, 0.150))),
        super(key: key);

  final AnimationController controller;
  final Animation<double> buttonSqueeze;

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: InkWell(
          onTap: () {
            controller.forward();
          },
          child: Container(
              width: buttonSqueeze.value,
              height: 60,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  )),
              child: _buildInside(context))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueeze.value > 75) {
      return const Text(
        "Sign in",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
      );
    } else {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.0,
      );
    }
  }
}
