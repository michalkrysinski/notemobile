import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notemobile/page/home_page/home_page.dart';
import 'package:notemobile/page/login_page/login_page.dart';

class ManagementPage extends StatelessWidget {
  const ManagementPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        final user = snapshot.data;
        if (user == null) {
          return LoginPage();
        }
        return HomePage(user: user);
      },
    );
  }
}

//LOGIN AND REGISTER