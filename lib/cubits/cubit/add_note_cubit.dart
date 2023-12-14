import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
    Color? color ;

  addNote(NoteModel note)
  async{
    note.color = color!.value ;
    emit(AddNoteLoading()) ;
    try {
  var notesBox =Hive.box<NoteModel>('Note_box') ;
  await notesBox.add(note) ;
  print(note) ;
    emit(AddNoteSuccess()) ;
}  catch (e) {
  emit(AddNoteFailure(e.toString())) ;
}
  }
}
