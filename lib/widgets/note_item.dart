import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  // static String id = 'NoteItem' ;
  final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return const EditNoteView() ; 
        }));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                // width: 385,
                // height: 200,
                padding:EdgeInsets.only(
                  top: 15,
                  bottom: 15
                ) ,
                color: Color(note.color),
                child: Row(
                  children: [
                      Padding(
                      padding: const EdgeInsets.only(left: 27.0, top: 5,bottom: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            note.title,
                            style:const TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Text(
                            note.subtitle,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 38, 36, 36),
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, bottom: 70),
                          child: IconButton(
                            onPressed: () 
                            {
                              note.delete() ;
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                            iconSize: 33,
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(left: 5.0,top:25),
                          child: Text(
                            note.date,
                            style: TextStyle(
                              color:  Colors.black.withOpacity(.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}