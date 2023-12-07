import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () 
          {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              context: context, builder: (context)
            
            {
              return  ModalBottomSheet() ;
            });
          },
          child: const Icon(Icons.add),
        ),
        // backgroundColor: Color(0xff303030),
        appBar: AppBar(
          // backgroundColor: Color(0xff303030),
          title: const Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Notes',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0, top: 6, bottom: 6),
              child: Container(
                height: 30,
                width: 52,
                // color: const Color.fromARGB(255, 146, 143, 143),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(0.1)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  iconSize: 25,
                ),
              ),
            )
          ],
        ),
        body: CustomListView());
  }
}
class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            CustomTextField(hint: 'Title')
          ],
        ),
    );
  }
}
