import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {
  final Animation<Color?> fadeScreen;

  const FadeContainer({Key? key, required this.fadeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "root",
      child: Container(
        decoration: BoxDecoration(color: fadeScreen.value),
      ),
    );
  }
}
