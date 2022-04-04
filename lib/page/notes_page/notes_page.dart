import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 17),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Save Note'),
        icon: const Icon(
          Icons.note_add,
        ),
        backgroundColor: const Color.fromARGB(255, 138, 27, 190),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: ListView(
          children: const [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Note Title",
              ),
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your note",
                ),
              ),
            ),
            CategoryWidget('Tekst 1'),
            CategoryWidget('Tekst 2'),
            CategoryWidget('Tekst 3'),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.all(
        25,
      ),
      margin: const EdgeInsets.all(
        15,
      ),
      child: Text(title),
    );
  }
}
