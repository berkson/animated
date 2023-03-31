import 'package:flutter/material.dart';

class GrowTransition extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  const GrowTransition({Key? key, required this.animation, required this.child,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
