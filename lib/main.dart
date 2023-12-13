import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_app/cubits/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';



void main()async {
  Bloc.observer = SimpleBlocObserver() ;
  
  await Hive.initFlutter() ;
  // if (!Hive.isAdapterRegistered(1)) 
    Hive.registerAdapter(NoteModelAdapter());
  
  await Hive.openBox<NoteModel>('Note_box') ;
  
  

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      
      child: MaterialApp(
        
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'
        ),
        debugShowCheckedModeBanner: false,
        home: const NotesView()
      ),
    );
  }
}
