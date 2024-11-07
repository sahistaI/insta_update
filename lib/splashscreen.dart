import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 110,
              height: 110,
              child: Image.asset("assets/images/insta_logo.png"),
            ),
          ),
          SizedBox(height:15,),
          Center(
            child: Container(
              width: 185,
              height: 50,
            // color: Colors.blue,
              child: Image.asset("assets/images/Instagram Logo.png",fit:BoxFit.cover,),
            ),
          ),

        ],
      ),

    );

  }

}