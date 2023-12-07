import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , index)
      {
        return const NoteItem() ;
      });
  }
}