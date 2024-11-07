
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LoginState();

}
class LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(
             child: Container(
               width: 182,
               height: 50,
               //color: Colors.blue,
               child: Image.asset("assets/images/Instagram Logo.png",fit: BoxFit.cover,),
             ),
           ),
           SizedBox(
             height: 10,
           ),

           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
              // controller: number1,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(11),
                   borderSide: BorderSide(
                     color: Colors.deepPurple,
                   ),
                 ),
                 hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                )
                // prefixIcon: Icon(Icons.mail),
               ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               // controller: number1,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(11),
                     borderSide: BorderSide(
                       color: Colors.deepPurple,
                     ),
                   ),
                   hintText: "Password",
                   hintStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 18
                   )
                 // prefixIcon: Icon(Icons.mail),
               ),
             ),
           ),
           
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text("Forgot Password?",style: TextStyle(
                   fontSize:14,color: Color(0XFF3797EF)
                 ),),
               ],
             ),
           ),
           SizedBox(height: 10),
           
           ElevatedButton(
               style: ElevatedButton.styleFrom(
                 minimumSize: Size(343.0,50.0),
                 backgroundColor:Color(0XFF3797EF),
                 shape: RoundedRectangleBorder(),
               ),
               onPressed: (){}, child: Text("Log in",
           style: TextStyle(
             fontSize: 18,color: Colors.white.withOpacity(0.7)
           ),)),
           
           SizedBox(height: 50),

           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Icon(Icons.facebook,size: 24,color: Color(0XFF3797EF),),
                 SizedBox(width:5),
                 Text("Log in with Facebook",style: TextStyle(
                     fontSize:16,color: Colors.blue
                 ),),
               ],
             ),
           ),
           
           SizedBox(height: 50,),
           
           Text("OR",style: TextStyle(
             color: Colors.grey,fontSize: 16
           ),),

           SizedBox(height: 50,),

           Row(
             mainAxisAlignment:MainAxisAlignment.center,
             children: [
               Text("Don't have an account?",style: TextStyle(
                   color: Colors.grey,fontSize: 16
               ),),
               SizedBox(width: 5),
               Text("Sign up.",style: TextStyle(
                   color: Color(0XFF3797EF),fontSize: 16
               ),),

             ],
           ),





         ],
       ),

    );
  }

}