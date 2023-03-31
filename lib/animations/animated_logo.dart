import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo(Animation<double> animation, {super.key})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;

    return Center(
      child: SizedBox(
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }
}
