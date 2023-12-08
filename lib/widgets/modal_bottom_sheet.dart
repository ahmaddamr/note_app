import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNoteForm();
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
  final GlobalKey<FormState> FormKey = GlobalKey() ;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled ;
  String ? title , subTitle ;
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
                onSaved: (value)
                {
                  title = value ;
                } ,
                hint: 'title'),
              CustomTextField(
                onSaved: (value)
                {
                    subTitle = value ;
                },
                hint: 'subTitle',
                maxLines: 7,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(onPressed: () 
              {
                if (FormKey.currentState!.validate()) 
                {
                  FormKey.currentState!.save() ;
                }else
                {
                  autovalidateMode = AutovalidateMode.always ;
                }
              }, text: 'Add')
            ],
          ),
        ),
      ),
    );
  }
}
