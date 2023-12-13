import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
    CustomTextField({super.key,required this.hint,  this.maxLines = 1, this.onSaved});
  
  String hint ;
  final int maxLines ;
  final void Function(String?)? onSaved ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 20.0 ,right: 12 , left: 12),
      child: TextFormField(
        validator: (value) {
          if(value?.isEmpty ?? true)
          {
            return 'Field is Required' ;
          } 
          // else
          // {
          //   return null ;
          // }
        },
        onSaved: onSaved,
        maxLines: maxLines,
        cursorColor: Color(0xff63FFDA) ,
                    decoration: InputDecoration(
                      focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff63FFDA)
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      contentPadding:const EdgeInsets.all(15),
                      filled: true,
                      labelText: '$hint',  
                      labelStyle:const  TextStyle(
                        color: Color(0xff63FFDA)
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 34, 0, 253)
                        ),
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      // suffixIcon: Icon(Icons.password,
                      // color: Color(0xffAE00FD),)
                    ),
                  ),
    );
  }
}