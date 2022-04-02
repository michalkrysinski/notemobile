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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 206, 93, 240),
              Color.fromARGB(255, 159, 85, 233),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 190,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('images/iconnotes2.jpg'),
              radius: 90,
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 50,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
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
                      'in Notemobile!',
                    ),
                  ],
                ),
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