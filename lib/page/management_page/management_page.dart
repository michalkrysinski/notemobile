import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coś tu będzie wkrótce',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ManagementPage(),
    );
  }
}

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
            return const Scaffold(
              body: Center(
                child: Text('Jesteś niezalogowany'),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: Text('Jesteś zalogowany jako ${user.email}'),
            ),
          );
        });
  }
}
