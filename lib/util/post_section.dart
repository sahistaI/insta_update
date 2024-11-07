import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_update/model/post.dart';

class PostSection extends StatelessWidget{

  final Post post;

  const PostSection({Key?key, required this.post}) : super (key:key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
      Container(
       // color: Colors.grey[900],
        padding: EdgeInsets.all(10),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage(post.profileImagePath),
                      ),
                      SizedBox(width: 10,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(post.username,style: TextStyle(
                                  fontWeight: FontWeight.bold, color:Colors.white
                              ),),
                              SizedBox(width:10,),
                              Icon(Icons.verified,color: Colors.blue,size: 20,),
                            ],
                          ),
                          SizedBox(height: 5,),

                          Text(post.location,style: TextStyle(
                              fontWeight: FontWeight.bold, color:Colors.white
                          ),),

                        ],
                      ),
                    ],
                  ),


                  Icon(Icons.more_vert,color: Colors.white,)

                ],
              ),
              SizedBox(height: 10,),

          SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(post.postImagePath,fit: BoxFit.cover,)),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                  
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white),
                        SizedBox(width:5,), Text('${post.likes}',style:TextStyle(fontSize:16,color: Colors.white),),
                        SizedBox(width: 10,),
                        Icon(Icons.chat_bubble_outline,color: Colors.white), SizedBox(width:5,),Text('${post.comments}',style:TextStyle(fontSize:16,color: Colors.white),),
                        SizedBox(width: 10,),
                        Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationZ(-0.2 ),
                            child: Icon(Icons.send_rounded,color: Colors.white,)),
                      ],
                    ),
                  ),
                  
                  Icon(Icons.bookmark_border_outlined,color: Colors.white,)
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius:15,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(post.likesUserProfile),
                    ),
                    SizedBox(width: 5,),
                    RichText(text:
                    TextSpan(
                      children:[
                        TextSpan(
                          text: post.likesUserName,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        WidgetSpan(child: SizedBox(width:5,)),
                        TextSpan(
                            text: 'and',
                            style: TextStyle(
                                color: Colors.white,
                            ),
                        ),
                        WidgetSpan(child: SizedBox(width:5,)),
                        TextSpan(
                            text:'${post.noOfLike}',
                            style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold
                            )
                        ),
                        WidgetSpan(child: SizedBox(width:5,)),
                        TextSpan(
                            text: 'others',
                            style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold
                            )
                        )
                      ]
                    ))
                  ],
                ),
              ),
              SizedBox(height: 10,),

             Row(
               children: [
                 Flexible(
                   child: RichText(text: TextSpan(
                     children: [
                       TextSpan(
                         text: post.commentUser,
                         style: TextStyle(
                           fontWeight: FontWeight.bold
                         )
                   
                       ),
                       WidgetSpan(child: SizedBox(width:5,)),
                   
                       TextSpan(
                           text:post.commentText,
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                           ),
                   
                   
                       )
                     ]
                   )),
                 ),
               ],
             )



            ],
          ),
        ),
    ]
      );


  }

}