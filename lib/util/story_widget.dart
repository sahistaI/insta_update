import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget{

  final String image;
  final String name;

  const StoryWidget ({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
       children: [
         CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
         ),
         SizedBox(height: 4,),
         Text(name,style: TextStyle(
           color: Colors.white,
           fontSize: 14
         ),)
       ],
     ),
   );

  }

}