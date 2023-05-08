import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key, required this.hint, required this.obscure, required this.icon})
      : super(key: key);
  final String hint;
  final bool obscure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 0.5))),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 5),
            hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
            hintText: hint,
            border: InputBorder.none,
            icon: Icon(
              icon,
              color: Colors.white,
            )),
        obscureText: obscure,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
