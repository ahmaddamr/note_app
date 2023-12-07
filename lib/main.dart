import 'package:flutter/material.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/widgets/note_item.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView()
    );
  }
}
