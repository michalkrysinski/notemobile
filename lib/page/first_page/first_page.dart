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




//  Column(
     //     crossAxisAlignment: CrossAxisAlignment.center,
     //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //    children: [
      //      const SizedBox(
      //        height: 5,
      //      ),
      //      Column(
       //       children: [
       //         Image.asset(
         //         'images/notebook1.jpg',
        //          height: 300.0,
         //         width: 300.0,
         //       ),
            //    SizedBox(
           //       height: 150,
          //        child: DefaultTextStyle(
          //          style: const TextStyle(
          //            color: Color.fromARGB(255, 255, 255, 255),
         //            fontSize: 35,
         //           ),
         //           child: AnimatedTextKit(
           //           repeatForever: true,
          //            isRepeatingAnimation: true,
         //             animatedTexts: [
            //            TyperAnimatedText('Welcome!'),
           //             TyperAnimatedText('Create your own notes'),
          //              TyperAnimatedText('in Notemobile!'),
          //            ],
         //           ),
        //          ),
        //        ),
        //      ],
        //    ),
       //     const CircularProgressIndicator(),
       //   ],
       //

      // child: AnimatedOpacity(
      //    opacity: 1.0,
       //   duration: const Duration(milliseconds: 1900),
      //    child: Center(
      //      child: Container(
      //        height: 160.0,
     //         width: 160.0,
     //         child: const Center(
      //          child: ClipOval(
      //            child: Icon(
      //              Icons.article,
      //              size: 148,
      //            ),
      //          ),
      //        ),
       //     decoration: BoxDecoration(
          //      shape: BoxShape.circle,
         //       color: Colors.white,
         //       boxShadow: [
         //         BoxShadow(
        //            color: Colors.black.withOpacity(0.3),
        //            blurRadius: 2.0,
        //            offset: const Offset(5.0, 3.0),
       //             spreadRadius: 2.0,
        //          ),
        //        ],
       //       ),
       //     ),
     //     ),
      //  ),

       //  Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //    children: [
            //      const SizedBox(
            //        height: 5,
            //      ),
            //      Column(
            //       children: [
            //         Image.asset(
            //         'images/notebook1.jpg',
            //          height: 300.0,
            //         width: 300.0,
            //       ),
            //    SizedBox(
            //       height: 150,
            //        child: DefaultTextStyle(
            //          style: const TextStyle(
            //            color: Color.fromARGB(255, 255, 255, 255),
            //            fontSize: 35,
            //           ),
            //           child: AnimatedTextKit(
            //           repeatForever: true,
            //            isRepeatingAnimation: true,
            //             animatedTexts: [
            //            TyperAnimatedText('Welcome!'),
            //             TyperAnimatedText('Create your own notes'),
            //              TyperAnimatedText('in Notemobile!'),
            //            ],
            //           ),
            //          ),
            //        ),
            //      ],
            //    ),
            //     const CircularProgressIndicator(),
            //   ],
            //