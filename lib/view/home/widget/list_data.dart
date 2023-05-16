import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final EdgeInsets margin;

  const ListData(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(color: Colors.grey.shade100, width: 1.0),
              bottom: BorderSide(color: Colors.grey.shade100, width: 1.0))),
      child: Row(children: [
        Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle, image: DecorationImage(image: image))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ],
        )
      ]),
    );
  }
}
