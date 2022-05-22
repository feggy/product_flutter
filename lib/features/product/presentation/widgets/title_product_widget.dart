import 'package:flutter/material.dart';

class TitleProductWidget extends StatelessWidget {
  const TitleProductWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 10),
        maxLines: 2,
      ),
    );
  }
}
