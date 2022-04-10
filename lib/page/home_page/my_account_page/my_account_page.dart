import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      child: ListView(
        children: [
          const SizedBox(
            height: 200,
          ),
          Center(
            child: Text(
              'Jesteś zalogowany jako: ${widget.user.email}',
              style: GoogleFonts.alef(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 320,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text(
                'Wyloguj',
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 138, 27, 190),
                onPrimary: const Color.fromARGB(255, 255, 255, 255),
                animationDuration: const Duration(
                  milliseconds: 3600,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
