import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:notemobile/page/management_page/management_page.dart';

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
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ManagementPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('NOTEMOBILE'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 95, 0, 143),
              Color.fromARGB(255, 54, 0, 67),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              child: Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 35,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        'Hello!',
                      ),
                      TyperAnimatedText(
                        'Create your own notes',
                      ),
                      TyperAnimatedText(
                        'in Notemobile',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 20),
              child: const CircularProgressIndicator(
                backgroundColor: Color.fromARGB(255, 54, 0, 67),
                color: Color.fromARGB(255, 255, 255, 255),
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
