import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> FormKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  final bool isloading ;

  _AddNoteFormState({this.isloading = false});
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        child: Padding(
          padding:  EdgeInsets.only(left: 5.0, right: 5,
          bottom: MediaQuery.of(context).viewInsets.bottom  ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                    onSaved: (value) {
                      title = value;
                    },
                    hint: 'title'),
                CustomTextField(
                  onSaved: (value) {
                    subTitle = value;
                  },
                  hint: 'subTitle',
                  maxLines: 7,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                    onPressed: () {
                      if (FormKey.currentState!.validate()) {
                        FormKey.currentState!.save();
                        var currentDate = DateTime.now() ;
                        var formatedCurrentDAte = DateFormat.MEd().format(currentDate) ;
                        NoteModel noteModel = NoteModel(
                            title: title!,
                            subtitle: subTitle!,
                            date: formatedCurrentDAte,
                            color: Colors.amber.value);
                        BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                        
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                      }
                    },
                    text: 'Add')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
