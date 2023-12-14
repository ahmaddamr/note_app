import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_app/cubits/cubit/notes_cubit/notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
          radius: 42,
          backgroundColor: Colors.white,
          child: CircleAvatar(
              backgroundColor: color,
              radius: 38,
            ),
        )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 40,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key, });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int CurrentIndex = 0 ;
    List<Color>  Colors = [
    Color(0xffc1b098),
    Color(0xffe9d2f4),
    Color(0xff9b9b93),
    Color(0xff39393a),
    Color(0xff63b0cd),
    Color(0xffE3B505),
    Color(0xff95190C),
    Color(0xff610345),
    Color(0xff107E7D),
    Color(0xff044B7F)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46 * 2,
      child: ListView.builder(
          itemCount: Colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 5),
              child: GestureDetector(
                onTap: ()
                {
                  CurrentIndex = index ;
                  BlocProvider.of<AddNoteCubit>(context).color = Colors[index] ;
                  setState(() {
                    
                  });
                },
                child: ColorItem(
                  color: Colors[index] ,
                  isActive: CurrentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
