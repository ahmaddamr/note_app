import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)
  async{
    emit(AddNoteLoading()) ;
    try {
  var notesBox =Hive.box<NoteModel>('Note_box') ;
  await notesBox.add(note) ;
    emit(AddNoteSuccess()) ;
}  catch (e) {
  emit(AddNoteFailure(e.toString())) ;
}
  }
}
