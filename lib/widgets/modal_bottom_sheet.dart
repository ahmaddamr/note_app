import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class ModalBottomSheet extends StatefulWidget {
    const ModalBottomSheet({super.key});

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  bool isloading = false ;

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context) ;
        }
        if (state is AddNoteFailure) {
          print('failed ${state.errMessage}') ;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddNoteLoading ? true : false ,
          child: AddNoteForm());
      },
    );
  }
}

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
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      autovalidateMode: autovalidateMode,
      child: Container(
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
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                  text: 'Add')
            ],
          ),
        ),
      ),
    );
  }
}
