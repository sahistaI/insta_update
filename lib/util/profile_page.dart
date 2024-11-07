

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock,size: 18,color: Colors.white,),
            SizedBox(width: 5,),
            Text('Destiny_9096',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,fontSize:18
            ),),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.menu,color: Colors.white,)),
        ],
      ),
      body: Column(
        children: [
          buildProfileHeader(),
        ],
      ),
    );
  }

  Widget buildProfileHeader(){
    return Column(
      children: [

      ],
    );
  }




}