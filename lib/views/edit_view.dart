import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note, this.onpressed});
  // static String id = 'EditView' ;
  
  final NoteModel note ;
  final void Function()? onpressed ;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
    String? title , content ;
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
                  onPressed: () 
                  {
                    
                    widget.note.title = title ?? widget.note.title ;
                    widget.note.subtitle = content ?? widget.note.title ;
                    widget.note.save() ;
                    BlocProvider.of<NotesCubit>(context).fetchAllanotes() ;
                    Navigator.pop(context) ;

                  } ,
                  icon:const Icon(Icons.done_outline),
                  iconSize: 23,
                ),
              ),
            )
          ],
        ),
      body:  Column(
            children: [
              CustomTextField(
                onChanged: (value) 
                {
                    title = value ;
                } ,
                hint: 'Title'),
              CustomTextField(onChanged: (value)
              {
                content = value ;
              } 
              , hint: 'Content',
              maxLines: 7,),
              
            ],
          ),
    );
  }
}