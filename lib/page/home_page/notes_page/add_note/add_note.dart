import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  TextEditingController title = TextEditingController();

  TextEditingController note = TextEditingController();

  CollectionReference ref = FirebaseFirestore.instance.collection('notes');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add your note'),
        backgroundColor: const Color.fromARGB(255, 138, 27, 190),
        shadowColor: const Color.fromARGB(255, 78, 13, 107),
        actions: [
          TextButton(
            onPressed: () {
              ref.add(
                {'title': title.text, 'note': note.text},
              ).whenComplete(
                () => Navigator.pop(context),
              );
            },
            child: const Icon(Icons.check),
            style: TextButton.styleFrom(
              primary: const Color.fromARGB(255, 255, 255, 255),
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                controller: title,
                decoration: const InputDecoration(hintText: 'Title'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextField(
                  controller: note,
                  maxLines: null,
                  expands: true,
                  decoration: const InputDecoration(hintText: 'Note'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
