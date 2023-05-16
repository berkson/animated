import 'package:animations/view/home/widget/home_top.dart';
import 'package:flutter/material.dart';

import 'animated_list_view.dart';
import 'fade_container.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController animationController;
  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color?> fadeScreen;

  StaggerAnimation({Key? key, required this.animationController})
      : containerGrow =
            CurvedAnimation(parent: animationController, curve: Curves.ease),
        fadeScreen = ColorTween(
                begin: Colors.purple, end: Colors.purple.withOpacity(0.0))
            .animate(CurvedAnimation(
                parent: animationController, curve: Curves.linear)),
        listSlidePosition = EdgeInsetsTween(
                begin: const EdgeInsets.only(bottom: 0),
                end: const EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
                parent: animationController,
                curve: const Interval(0.325, 0.8, curve: Curves.ease))),
        super(key: key);

  // listSlide é uma animação de margem. O último tile sempre fica no bottom zero
  // usa-se multiplicadores a partir de zero para o efeito de deslizamento.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: _buildAnimation,
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            HomeTop(
              containerGrow: containerGrow,
            ),
            AnimatedListView(listSlidePosition: listSlidePosition),
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            fadeScreen: fadeScreen,
          ),
        )
      ],
    );
  }
}
