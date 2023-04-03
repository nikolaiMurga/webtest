import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String name;
  final String text;

  const Screen({required this.name, required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          Text(text),
        ],
      ),
    );
  }
}
