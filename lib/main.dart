import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notemobile/page/firstpage/firstpage.dart';
import 'package:notemobile/page/managementpage/managementpage.dart';
import 'package:notemobile/page/registrationpage/registrationpage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationPage(),
    );
  }
}
