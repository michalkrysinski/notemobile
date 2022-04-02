import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notemobile/page/home_page/home_page.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final HomePage widget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Jesteś zalogowany jako ${widget.user.email}'),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Text('Wyloguj'),
          ),
        ],
      ),
    );
  }
}
