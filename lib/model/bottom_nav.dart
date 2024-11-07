import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget{

  final int selectedIndex;
  final Function(int) onItemTapped;
  final String userProfileImage;

  BottomNav({
    required this.selectedIndex,
    required this.onItemTapped,
    required this.userProfileImage,

});
  

  @override
  Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black12
    ),


    child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap:onItemTapped,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size:35,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search,size:35),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,size:35),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,size:35),label: ''),
          BottomNavigationBarItem(icon: CircleAvatar(
            radius: 15,
            backgroundImage: userProfileImage.startsWith("http")
                ? NetworkImage(userProfileImage) // For network images
                : AssetImage(userProfileImage) as ImageProvider,
          ),label: ''),
        ]),
  );



  }
  
}