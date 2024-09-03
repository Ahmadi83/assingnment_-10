import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

 runApp(MaterialApp(
   home: MyApp(),
 )) ;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
   Makebutton(text){
     return Container(
       child: ElevatedButton(onPressed: (){},
           child: Text(text,style: TextStyle(color: Colors.white,fontSize: 30),),
       style: ElevatedButton.styleFrom(
         backgroundColor: Colors.deepPurple,
         shape: CircleBorder(),
         fixedSize: Size.fromRadius(30)
       ),
       ),
     );
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Makebutton('1'),
              ],
            )
        ],
      ),
    );
  }
}
