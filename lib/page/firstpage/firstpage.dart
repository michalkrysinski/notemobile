import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Notemobile'),
        ],
      )),
    );
  }
}
