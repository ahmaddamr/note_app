import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
    CustomButton({super.key,required this.onPressed,required this.text});
  
    VoidCallback onPressed ;
    String text ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff63FFDA),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              minimumSize: Size(370, 50)),
          child: Text(
            '$text',
            style: TextStyle(fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold),
          )),
    );;
  }
}