import 'package:flutter/material.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  // static String id = 'NoteItem' ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return EditNoteView() ; 
        }));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                // width: 385,
                // height: 200,
                padding:EdgeInsets.only(
                  top: 15,
                  bottom: 15
                ) ,
                color: Color(0xffFFCD7A),
                child: Row(
                  children: [
                    const Padding(
                      padding: const EdgeInsets.only(left: 27.0, top: 5,bottom: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flutter tips',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Text(
                            'Build your career with \nTharwat Samy',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 38, 36, 36),
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80.0, bottom: 70),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                            iconSize: 33,
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(left: 5.0,top:25),
                          child: Text(
                            'May 25,2023',
                            style: TextStyle(
                              color:  Colors.black.withOpacity(.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}