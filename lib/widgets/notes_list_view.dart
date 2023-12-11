import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  // final  var data = const [] ;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [] ;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.builder(
            itemCount: notes.length  ,
            itemBuilder: (context, index) {
            return const NoteItem();
          }),
        );
      },
    );
  }
}
