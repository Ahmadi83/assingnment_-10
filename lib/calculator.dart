import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  List<int> number =[];


   Makebutton(text,int){
     return Padding(
       padding: const EdgeInsets.only(right: 3,left: 3,top: 3,bottom: 3),
       child: Container(
         child: ElevatedButton(onPressed: (){
           setState(() {
             number.add(int);
           });
         },
             child: Text(text,style: TextStyle(color: Colors.white,fontSize: 40),),
         style: ElevatedButton.styleFrom(
           backgroundColor: Colors.deepPurple,
           shape: CircleBorder(),
           fixedSize: Size.fromRadius(43)
         ),
         ),
       ),
     );
   }


   MakeCalculate_Button(text){
     return Padding(
       padding: const EdgeInsets.only(right: 3,left: 3,top: 3,bottom: 3),
       child: Container(
         child: ElevatedButton(onPressed: (){

         },
           child: Text(text,style: TextStyle(color: Colors.white,fontSize: 35),),
           style: ElevatedButton.styleFrom(
               backgroundColor: Colors.orangeAccent,
               shape: CircleBorder(),
               fixedSize: Size.fromRadius(43)
           ),
         ),
       ),
     );
   }


   
   MakeAssign_Button(text,{function}){
     return Padding(
       padding: const EdgeInsets.only(right: 3,left: 3,top: 3,bottom: 3),
       child: Container(
         child: ElevatedButton(onPressed: (){
           setState(() {
            
           });
         },
           child: Text(text,style: TextStyle(color: Colors.white,fontSize: 28),),
           style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blueGrey,
               shape: CircleBorder(),
               fixedSize: Size.fromRadius(43)
           ),
         ),
       ),
     );
   }

   List collect_number=[];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(mainAxisAlignment:MainAxisAlignment.end,
          children: [

              Padding(
                padding: const EdgeInsets.only(right: 20,bottom: 15),
                child:  Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("${number.join("")}",style: TextStyle(fontSize: 60),),
                  ],
                ),
              ),

           SizedBox(height: 10
             ,),

           const Divider(height: 2,
              thickness: 2,
              color: Colors.black,
              indent: 7,
              endIndent: 7,
            ),

            SizedBox(height: 20,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MakeAssign_Button('AC'),
                  MakeAssign_Button('+/-'),
                  MakeAssign_Button('%'),
                  MakeCalculate_Button('/')
                ],
              ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Makebutton('7',7),
              Makebutton('8',8),
              Makebutton('9',9),
             MakeCalculate_Button('x'),
            ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Makebutton('4',4),
              Makebutton('5',5),
              Makebutton('6',6),
              MakeCalculate_Button('_')
            ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Makebutton('1',1),
              Makebutton('2',2),
              Makebutton('3',3),
              MakeCalculate_Button('+')
            ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Makebutton('0',0),
              MakeCalculate_Button('=',)
            ],
            )
          ],
        ),
      ),
    );
  }
  }


class Calculate_number {

  Add(){

  }


}
