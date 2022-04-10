import 'package:flutter/material.dart';

class EditNote extends StatelessWidget {
  const EditNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 138, 27, 190),
        shadowColor: const Color.fromARGB(255, 78, 13, 107),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Edit'),
            style: TextButton.styleFrom(
              primary: const Color.fromARGB(255, 255, 255, 255),
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
