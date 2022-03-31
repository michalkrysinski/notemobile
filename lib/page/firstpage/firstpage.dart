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
      backgroundColor: (const Color.fromARGB(255, 201, 238, 255)),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 65,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        color: Colors.indigo,
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
                ]),
          ),
        ),
      ),
    );
  }
}
