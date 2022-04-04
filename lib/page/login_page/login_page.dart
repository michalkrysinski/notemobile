import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isCreatingAccount == true ? 'REGISTER' : 'LOGIN'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 138, 27, 190),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 214, 11, 255),
              Color.fromARGB(255, 133, 71, 209),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  isCreatingAccount == true
                      ? 'Hello!                                    Create your account'
                      : 'Hello!                                    Signin into your account',
                  style: GoogleFonts.alef(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 90),
                TextField(
                  controller: widget.emailController,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 4.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 108, 25, 146), width: 4.0),
                    ),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: widget.passwordController,
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 4.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 108, 25, 146), width: 4.0),
                    ),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 5),
                Text(errorMessage),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () async {
                    if (isCreatingAccount == true) {
                      //rejestracja
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: widget.emailController.text,
                          password: widget.passwordController.text,
                        );
                      } catch (error) {
                        setState(() {
                          errorMessage = error.toString();
                        });
                      }
                    } else {
                      //logowanie
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
                    }
                  },
                  child:
                      Text(isCreatingAccount == true ? 'SIGN UP' : 'SIGN IN'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 138, 27, 190),
                    onPrimary: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                if (isCreatingAccount == false) ...[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isCreatingAccount = true;
                      });
                    },
                    child: Text(
                      'Don\'t have an account? Sign up',
                      style: GoogleFonts.alef(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
                if (isCreatingAccount == true) ...[
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          isCreatingAccount = false;
                        },
                      );
                    },
                    child: Text(
                      'Do you have an account? Sign in',
                      style: GoogleFonts.alef(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
