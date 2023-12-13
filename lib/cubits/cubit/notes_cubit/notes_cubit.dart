import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes ;
  fetchAllanotes()  {
    emit(NotesLoading());
    // try {
      var notesBox = Hive.box<NoteModel>('Note_box');
        notes = notesBox.values.toList() ;
      // emit(NotesSuccess(notes!));
    // } catch (e) {
    //   emit(NotesFailed((e.toString())));
    // }
  }
}
