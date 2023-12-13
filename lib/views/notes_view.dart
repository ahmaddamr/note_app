import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/modal_bottom_sheet.dart';
import 'package:note_app/widgets/notes_list_view.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}


class _NotesViewState extends State<NotesView> {

  @override
initState()
{
  BlocProvider.of<NotesCubit>(context).fetchAllanotes() ;
  super.initState() ;
}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) {
                    return const ModalBottomSheet();
                  });
            },
            child: const Icon(Icons.add),
          ),
          // backgroundColor: Color(0xff303030),
          appBar: AppBar(
            // backgroundColor: Color(0xff303030),
            title: const Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Notes',
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
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: 25,
                  ),
                ),
              )
            ],
          ),
          body:  ListView()),
    );
  }
}

class ListView extends StatefulWidget {
  const ListView({
    super.key,
  });

  @override
  State<ListView> createState() => _ListViewState();
}


class _ListViewState extends State<ListView> {
   @override
initState()
{
  BlocProvider.of<NotesCubit>(context).fetchAllanotes() ;
  super.initState() ;
}
  @override
  Widget build(BuildContext context) {
    return CustomListView();
  }
}
