import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _MyAppState();
}

class _MyAppState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,

      body: Card(
        borderOnForeground: true,
        color: Colors.white,
        margin: EdgeInsets.only(left: 15,right: 15,bottom: 15,top: 30),
        elevation: 10,
        child: ListView(
          children: [Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage("image/mes.jpg"),
                radius: 40,),
              ),
              Text('Sign In',style: TextStyle(fontSize: 35),),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: TextField(decoration: InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),labelText: ('Name'),
                  prefixIcon: Icon(Icons.email),filled: true,fillColor: Colors.blue)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),label: Text("Password"),
                   prefixIcon: Icon(Icons.key_rounded),suffixIcon: Icon(Icons.visibility),filled:true,fillColor: Colors.blueAccent),),),

              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text("Forgot Password ?",style: TextStyle(color: Colors.purple,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0,right: 90,bottom: 20),
                child: MaterialButton(onPressed: (){},height: 50,
                   color: Colors.lightBlue,
                   child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),),
                ),
              ),
              Row(children: [
                 Padding(padding: EdgeInsets.only(left: 70,top: 10,right: 3),
                    child: Container(width: 100,height: 1,color: Colors.black,),),
                 Text("Or"),
                Padding(padding: EdgeInsets.only(left: 3,right: 50,top: 10),
                  child: Container(width: 100,height: 1,color: Colors.black,),)
              ],),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  CircleAvatar( backgroundImage: AssetImage('image/facebook.jpg'),radius: 25,),
                SizedBox(width: 20,),
                CircleAvatar( backgroundImage: AssetImage('image/google.jpg'),radius: 30,),
                SizedBox(width: 20,),
                CircleAvatar( backgroundImage:AssetImage('image/twitt.jpg'),radius: 30,)
              ],
              ),
            ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("Register now using ",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("Email?",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],

          ),
        ]),
      ),
    );
  }
}
