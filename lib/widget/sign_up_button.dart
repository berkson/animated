import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.only(top: 160),
        child: Text("Não possui uma conta? cadastre-se",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 12,
                letterSpacing: 0.8)),
      ),
    );
  }
}
