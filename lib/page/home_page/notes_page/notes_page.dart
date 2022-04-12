import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notemobile/page/home_page/notes_page/add_note/add_note.dart';
import 'package:notemobile/page/home_page/notes_page/edit_note/edit_note.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final controller = TextEditingController();

  final ref = FirebaseFirestore.instance.collection('notes');

  get documents => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: const Color.fromARGB(255, 138, 27, 190),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AddNote(),
            ),
          );
        },
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: ref.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: snapshot.hasData ? snapshot.data!.docs.length : 0,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => EditNote(
                        docToEdit: snapshot.data!.docs[index],
                      ),
                    ),
                  );
                },
                child: ListView(
                  children: [
                    Dismissible(
                      key: UniqueKey(),
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.all(15),
                          height: 180,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 112, 33, 143),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(255, 255, 255, 255),
                              ],
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 212, 192, 192),
                                blurRadius: 2.0,
                                offset: Offset(2.0, 2.0),
                              )
                            ],
                          ),
                          child: ListView(
                            children: [
                              Text(
                                snapshot.data!.docs[index]['title'],
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                snapshot.data!.docs[index]['note'],
                                style: GoogleFonts.lato(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //  appBar: AppBar(
    // //   title: const Text(
    //      'Search',
    //      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 17),
   //     ),
   //     backgroundColor: Colors.transparent,
   //     elevation: 0,
   //     actions: [
    //      IconButton(
    //        icon: const Icon(Icons.search),
    //        onPressed: () {},
    //        color: Colors.black,
   //       ),
   //     ],
  //    ),
  //    floatingActionButton: FloatingActionButton.extended(
   ////     onPressed: () {
    //      FirebaseFirestore.instance.collection('categories').add(
   //         {
      //        'title': controller.text,
      //      },
    //      );
   //       controller.clear();
 //       },
 //       label: const Text('Save Note'),
  //      icon: const Icon(
   //       Icons.note_add,
   //////     ),
      //  backgroundColor: const Color.fromARGB(255, 138, 27, 190),
   //   ),
   //   body: Padding(
   //     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
   //     child: StreamBuilder<QuerySnapshot>(
   //         stream:
   //             FirebaseFirestore.instance.collection('categories').snapshots(),
    //        builder: (context, snapshot) {
    //          if (snapshot.hasError) {
    //            return const Text('Something went wrong');
    //          }
        //      if (snapshot.connectionState == ConnectionState.waiting) {
        //        return const Text('Loading');
       //       }
//
     //         final documents = snapshot.data!.docs;

     //         return ListView(
       //         children: [
    //              TextField(
         //           controller: controller,
       //             decoration: const InputDecoration(
       //               border: InputBorder.none,
       //               hintText: "Note",
      //              ),
    //                style: const TextStyle(
    //                    fontSize: 22.0, fontWeight: FontWeight.bold),
    //              ),
    //              for (final document in documents) ...[
    //                Dismissible(
       //               key: ValueKey(document.id),
      //                onDismissed: (_) {
      //                  FirebaseFirestore.instance
       //                     .collection('categories')
      //                      .doc(document.id)
         //                   .delete();
         //             },
        //              child: CategoryWidget(
         //               document['title'],
        //              ),
      //              ),
     //             ],
     //           ],
     //         );
   //         }),
  //    ),
  //  );
// // }
//}
