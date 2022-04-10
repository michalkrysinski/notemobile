import 'package:flutter/material.dart';
import 'package:notemobile/page/home_page/notes_page/add_note/add_note.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final controller = TextEditingController();

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
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (_, index) {
            return Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              color: const Color.fromARGB(255, 244, 219, 172),
            );
          }),
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
