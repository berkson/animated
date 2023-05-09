import 'package:animations/view/home/widget/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController animationController;
  final Animation<double> containerGrow;

  StaggerAnimation({Key? key, required this.animationController})
      : containerGrow =
            CurvedAnimation(parent: animationController, curve: Curves.ease),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: AnimatedBuilder(
        animation: animationController,
        builder: _buildAnimation,
      )),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerGrow: containerGrow,
        )
      ],
    );
  }
}
