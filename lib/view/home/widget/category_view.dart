import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Trabalho', 'Estudos', 'Casa'];
  int _cat = 0;

  void selectForward() {
    setState(() {
      _cat++;
    });
  }

  // void selectForward() {
  //   setState(() {
  //     if (_cat + 1 == categories.length) {
  //       _cat = 0;
  //     } else {
  //       _cat++;
  //     }
  //   });
  // }

  void selectBackward() {
    setState(() {
      _cat--;
    });
  }

  // void selectBackward() {
  //   setState(() {
  //     if (_cat - 1 == -1) {
  //       _cat = categories.length - 1;
  //     } else {
  //       _cat--;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _cat > 0 ? selectBackward : null,
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white38,
        ),
        Text(
          categories[_cat].toUpperCase(),
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 18,
              letterSpacing: 1.2),
        ),
        IconButton(
          disabledColor: Colors.white38,
          onPressed: _cat < categories.length - 1 ? selectForward : null,
          icon: const Icon(Icons.arrow_forward_ios),
          color: Colors.white,
        )
      ],
    );
  }
}
