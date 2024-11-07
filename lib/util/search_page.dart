import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget{

  final List <String> imagePaths = [
      'assets/images/bg_about.png',
    'assets/images/butterfly.jpg',
    'assets/images/dish_5.jpg',
    'assets/images/image 1.jpg',
    'assets/images/image 2.jpg',
    'assets/images/image 4.jpg',
    'assets/images/image 5.jpg',
    'assets/images/image 6.jpg',
    'assets/images/profile 3.jpg',
    'assets/images/profile 4.jpg',
    'assets/images/profile_1.png',
    'assets/images/stone.jpg'

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
              hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search)
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 3,
        mainAxisSpacing:0,
        crossAxisSpacing:0,
        children: List.generate(imagePaths.length, (index){
          return StaggeredGridTile.count(
              crossAxisCellCount: index % 7==0 ? 2:1,
              mainAxisCellCount: index % 7 ==0 ? 2:1,
              child: Container(
          decoration: BoxDecoration(
        color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
        image: AssetImage(imagePaths[index]),
        fit: BoxFit.cover
            ),
            ),
            ));
            })
          
        
            ),
      )
    );
  }

}
