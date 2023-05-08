import 'package:flutter/material.dart';

class BkTransition extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;
  final sizeTween = Tween<double>(begin: 0, end: 300);
  final opacityTween = Tween<double>(begin: 0.1, end: 1);

  BkTransition({
    Key? key,
    required this.animation,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Opacity(
            opacity: opacityTween.evaluate(animation).clamp(0.0, 1.0),
            child: SizedBox(
              height: sizeTween
                  .evaluate(animation)
                  .clamp(0.0, sizeTween.end as double),
              width: sizeTween
                  .evaluate(animation)
                  .clamp(0.0, sizeTween.end as double),
              child: child,
            ),
          );
        },
        child: child,
      ),
    );
  }
}
