import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_update/model/bottom_nav.dart';
import 'package:insta_update/model/post_list.dart';
import 'package:insta_update/model/post.dart';
import 'package:insta_update/util/follower_page.dart';
import 'package:insta_update/util/profile_page.dart';
import 'package:insta_update/util/reels_page.dart';
import 'package:insta_update/util/search_page.dart';
import 'package:insta_update/util/story_widget.dart';

class HomePage extends StatefulWidget{




  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  void onItemTapped (int index){
    setState(() {
      selectedIndex = index;
    });


  }

  final List <Widget> pages = [
    Center(
    child:ListView(
      children: [
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              StoryWidget(image: "assets/images/butterfly.jpg", name: "Your Story"),
              StoryWidget(image: "assets/images/stone.jpg", name: "kenil"),
              StoryWidget(image: "assets/images/profile 3.jpg", name: "shreya"),
              StoryWidget(image: "assets/images/profile 4.jpg", name: "shikha"),
              StoryWidget(image: "assets/images/bg_about.png", name: "mamta"),
              StoryWidget(image: "assets/images/dish_5.jpg", name: "priya"),
            ],

          ),

        ),

        PostList(posts:[
          Post(
            username: 'john_doe',
            location: 'New York, USA',
            profileImagePath:'assets/images/profile 3.jpg' ,
            postImagePath: 'assets/images/bg_about.png',
            likes: 486,
            comments: 80,
            likesUserName:'krisha',
            likesUserProfile:'assets/images/stone.jpg',
            noOfLike: 4486,
            commentUser: 'Dhristi',
            commentText: 'Working Experince in an new app development company is beyond the expectations',
          ),
         Post(
          username: 'Krisha',
          location: 'Godhra,India',
          profileImagePath:'assets/images/profile 3.jpg' ,
          postImagePath: 'assets/images/butterfly.jpg',
          likes: 786,
          comments: 50,
          likesUserName:'shweta_1100',
          likesUserProfile:'assets/images/profile 4.jpg',
          noOfLike: 5086,
          commentUser: 'destiny_90',
          commentText: 'Butterfly Lover',
  ),

  ]
  ),
        ],
    ),
    ),
        SearchPage(),
        ReelsPage(),
        FollowerPage(),
        ProfilePage(),

        //  Divider(color: Colors.grey,),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: selectedIndex ==0 ?
                AppBar(
        backgroundColor: Colors.black,
        title:
        Row(
         mainAxisAlignment: MainAxisAlignment.start,
          children:[
            IconButton(onPressed: (){},
                icon: Icon(Icons.camera_alt,color: Colors.white,)),
            SizedBox(width:70,),
            Text(
              "Instagram",style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white,
              fontSize: 30,fontFamily: 'Billabong'
            ),),
          ],
        ),
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.live_tv,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline,color: Colors.white,)),
        ],
      )
      : null,

      body: pages[selectedIndex],
      bottomNavigationBar: BottomNav(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
        userProfileImage:('assets/images/butterfly.jpg'),
      ),

    );
  }
}