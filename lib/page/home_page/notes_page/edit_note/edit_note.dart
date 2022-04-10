import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notemobile/page/home_page/notes_page/notes_page.dart';

// ignore: must_be_immutable
class EditNote extends StatefulWidget {
  DocumentSnapshot docToEdit;
  EditNote({Key? key, required this.docToEdit}) : super(key: key);

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  TextEditingController title = TextEditingController();

  TextEditingController note = TextEditingController();

  @override
  void initState() {
    title = TextEditingController(text: widget.docToEdit['title']);
    note = TextEditingController(text: widget.docToEdit['note']);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 138, 27, 190),
        shadowColor: const Color.fromARGB(255, 78, 13, 107),
        actions: [
          TextButton(
            onPressed: () {
              widget.docToEdit.reference.update(
                {'title': title.text, 'note': note.text},
              ).whenComplete(() => Navigator.pop(context));
            },
            child: const Text('Save'),
            style: TextButton.styleFrom(
              primary: const Color.fromARGB(255, 255, 255, 255),
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
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
