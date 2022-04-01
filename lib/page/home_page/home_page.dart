import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notemobile'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        elevation: 10,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.pink],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.pink,
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.all(15),
            child: const Text(
              'Notemobile',
            ),
          ),
        ],
      ),
    );
  }
}
