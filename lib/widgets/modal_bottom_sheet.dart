import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(hint: 'Title'),
              CustomTextField(hint: 'Content',
              maxLines: 7,),
              SizedBox(
                height: 40,
              ),
              CustomButton(onPressed: () {}, text: 'Add')
            ],
          ),
        ),
    );
  }
}