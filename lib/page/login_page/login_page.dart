import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Zaloguj się'),
            const SizedBox(height: 50),
            TextField(
              controller: widget.emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextField(
              controller: widget.passwordController,
              obscureText: true,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(height: 20),
            Text(errorMessage),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: widget.emailController.text,
                    password: widget.passwordController.text,
                  );
                } catch (error) {
                  setState(() {
                    errorMessage = error.toString();
                  });
                }
              },
              child: const Text('Zaloguj się'),
            ),
          ],
        ),
      ),
    );
  }
}
