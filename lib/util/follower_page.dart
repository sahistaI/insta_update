

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FollowerPage extends StatefulWidget{
  @override
  State<FollowerPage> createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState (){
      super.initState();
      _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Following',),
              Tab(text: 'You'),
            ],
          ),
        ),

        body:
        TabBarView(
          controller: _tabController,
          children: [
            buildYouTab(),
            buildFollowingTab(),
          ],
        ),

      );
  }

  Widget buildSectionTitle (String title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:12.0),
      child: Text(title, style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.white
      ),
            ),
    );
  }

  Widget buildActivityItem (String text, String time, String imagePath){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(text, style: TextStyle(color: Colors.white),),
      subtitle:Text(time, style: TextStyle(color:Colors.grey),),
      trailing: Image.asset(imagePath,width: 50,height: 50,fit: BoxFit.cover,),
    );
  }

  Widget buildActivityItemWithButton(String text, String time, String buttonText, {bool isPrimary = false}){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.person,color: Colors.white,),
      ),
      title: Text(text,style: TextStyle(color: Colors.white),),
      subtitle:Text(time,style: TextStyle(color: Colors.grey),),
      trailing: ElevatedButton(
        onPressed: (){},
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? Colors.blue : Colors.grey[700],
          foregroundColor: Colors.white
          //backgroundColor: Colors.blue
        ),
      ),

    );
  }

  Widget buildYouTab(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          buildSectionTitle('Follow Requests'),
          buildSectionTitle('New'),
          buildActivityItem('karenne liked your photo.','1h','assets/images/stone.jpg'),
          buildSectionTitle('Today'),
          buildActivityItem('kiero_d, zackjohn and 26 others liked your photo.','3h','assets/images/image 5.jpg'),
          buildSectionTitle('This Week'),
          buildActivityItem('craig_love mentioned you in a comment: @jacob_w exactly...', '2d', 'assets/images/image 4.jpg'),
          buildActivityItemWithButton('martini_rond started following you.', '3d', 'Message',),
          buildActivityItemWithButton('maxjacobson started following you.', '3d', 'Message',),
          buildActivityItemWithButton('mis_potter started following you.', '3d', 'Follow', isPrimary: true),
          buildSectionTitle('This Month'),
          buildActivityItem('mr_kumbaya started following you.', '1w', 'assets/images/butterfly.jpg'),


        ],
      ),
    );
  }

  Widget buildFollowingTab(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          buildActivityItem('karenne liked your photo.','1h','assets/images/profile 3.jpg'),
          buildActivityItem('kiero_d, zackjohn and 26 others liked your photo.','3h','assets/images/image 5.jpg'),
          buildActivityItem('craig_love mentioned you in a comment: @jacob_w exactly...', '2d', 'assets/images/image 5.jpg'),
          buildActivityItem('craig_love mentioned you in a comment: @jacob_w exactly...', '2d', 'assets/images/image 6.jpg'),
          buildActivityItem('mr_kumbaya started following you.', '1w', 'assets/images/butterfly.jpg'),


        ],
      ),
    );
  }



}
