import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  const StaggerAnimation({Key? key, required this.controller})
      : super(key: key);
  final AnimationController controller;

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 320,
            height: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                )),
            child: const Text(
              "Sign in",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }
}
