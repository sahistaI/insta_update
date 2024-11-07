import 'package:flutter/material.dart';
import 'package:insta_update/home_page.dart';
import 'package:insta_update/login.dart';
import 'package:insta_update/splashscreen.dart';
import 'package:insta_update/util/follower_page.dart';
import 'package:insta_update/util/profile_page.dart';
import 'package:insta_update/util/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: ProfilePage()
    );
  }
}

