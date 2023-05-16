import 'package:animations/view/home/widget/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({Key? key, required this.listSlidePosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Curso Udemy",
          image: const AssetImage("images/mario.jpg"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Curso Udemy",
          image: const AssetImage("images/mario.jpg"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Curso Udemy",
          image: const AssetImage("images/mario.jpg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Curso Udemy",
          image: const AssetImage("images/mario.jpg"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
