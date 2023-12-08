import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  // static String id = 'EditView' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Color(0xff303030),
          title: const Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              'Edit Note',
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
                  icon:const Icon(Icons.done_outline),
                  iconSize: 23,
                ),
              ),
            )
          ],
        ),
      body:  Column(
            children: [
              CustomTextField(hint: 'Title'),
              CustomTextField(hint: 'Content',
              maxLines: 7,),
              
            ],
          ),
    );
  }
}