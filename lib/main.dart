import 'dart:ui';
import 'package:asignment10/facebook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main(){

  runApp(MaterialApp(
    home: MyApp(),
  )) ;
}

class MyApp extends StatefulWidget {
  MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  bool NobscureText =true;
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.blue,),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Instagram",
              style: TextStyle(fontSize: 45,color: Colors.black,fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.only(left: 12.0,top: 12,bottom: 3,right: 12),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Enter your Name",),),
            ),

            Padding(padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 12),
                child: TextField(obscureText: NobscureText,keyboardType: TextInputType.number
                    ,
                    decoration: InputDecoration(border:OutlineInputBorder() ,
                        hintText: "Password",
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              NobscureText=!NobscureText;
                            });

                          },
                          child:Icon(NobscureText? Icons.visibility:Icons.visibility_off),)

                    ))),


            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Forget Password",style: TextStyle(color: Colors.blue),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              // child: ConstrainedBox(constraints: BoxConstraints(minHeight: 50,minWidth: 800),
              child: Container(color: Colors.transparent,width: double.infinity,height: 50,
                child: MaterialButton(color: Colors.blue,
                  onPressed: (){},
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),

                  child: Text("Log in",style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,color: Colors.white,),),
                ),),),

            Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 12,right: 1,left: 1),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [ Container(width: 120,height: 1,color:Colors.black)],),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,bottom: 12,right: 45,left: 45),
                    child: Row(
                      children: [
                        Text("OR",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12,bottom: 12,right: 1,left: 1),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [ Container(width: 120,height: 1,color: Colors.black)],),
                  )

                ],),),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Facebook(),));
                 },child: Row(children: [Icon(Icons.facebook,color: Colors.blue,size: 30,),
                    GestureDetector(onTap:  () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Facebook();
                      },));
                    },
                      child: Text("Login with Facebook",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),))],),),
              ],),


            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(right: 12,left: 12,top: 12,bottom: 12),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
                ],),),

          ],
        )
    );
  }
}

//Icon(Icons.facebook_rounded,color: Colors.blue,size: 30,),