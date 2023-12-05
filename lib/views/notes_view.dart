import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 385,
              height: 200,
              color: Color(0xffFFCD7A),
              child: Row(
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 27.0, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter tips',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
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
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 105.0, bottom: 82, top: 28),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          iconSize: 33,
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left:43.0),
                        child: Text('May 25,2023',style: TextStyle(
                            color: const Color.fromARGB(255, 38, 36, 36),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
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
      );
  }
}