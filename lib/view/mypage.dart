import 'package:animations/widget/bk_transition.dart';
import 'package:animations/widget/grow_transition.dart';
import 'package:animations/widget/logo_widget.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    // mapeia o movimento de 0 até 1 do controller de animação para os valores de 0 a 300 do tween
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInCirc);// transformando em uma curva
      // incluído para fazer a imagem ir e voltar
      animation.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BkTransition(
        animation: animation,
        child: const LogoWidget(),
      ),
    );
  }
}
