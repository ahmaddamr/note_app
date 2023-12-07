import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});
  
  // final  var data = const [] ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 10.0),
      child: ListView.builder(
        itemBuilder: (context , index)
        {
          return const NoteItem() ;
        }),
    );
  }
}