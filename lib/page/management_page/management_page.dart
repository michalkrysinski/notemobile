import 'package:flutter/material.dart';

class ManagementPage extends StatefulWidget {
  const ManagementPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ManagementPage> createState() => _ManagementPageState();
}

class _ManagementPageState extends State<ManagementPage> {
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
