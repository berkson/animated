import 'package:animations/widget/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
          child: Column(
        children: const [
          InputField(
              hint: "Username", obscure: false, icon: Icons.person_2_outlined),
          InputField(hint: "Password", obscure: true, icon: Icons.lock)
        ],
      )),
    );
  }
}
