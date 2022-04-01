import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:notemobile/page/home_page/home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  _FirstPage createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 6),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 233, 30, 81),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Image.asset(
                  'images/Notebook.png',
                  height: 300.0,
                  width: 300.0,
                ),
                SizedBox(
                  height: 150,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 218, 221, 235),
                      fontSize: 35,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        TyperAnimatedText('Welcome!'),
                        TyperAnimatedText('Create your own notes'),
                        TyperAnimatedText('in Notemobile.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
