import 'package:flutter/cupertino.dart';
import 'package:insta_update/model/post.dart';
import 'package:insta_update/util/post_section.dart';

class PostList extends StatelessWidget{

  final List<Post> posts;

  PostList({required this.posts});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (context,index){
        return PostSection(post:posts[index]);

        });
  }
  
}