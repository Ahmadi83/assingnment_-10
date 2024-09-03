import 'package:asignment10/main.dart';
import 'package:asignment10/sign%20in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Facebook extends StatefulWidget {
  Facebook({super.key});

  @override
  State<Facebook> createState() => _MyAppState();
}

class _MyAppState extends State<Facebook> {
  var obcure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(backgroundColor: Colors.redAccent,),
        body: ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 300,
            child: Image.asset(
              "image/fac.jpg",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, bottom: 1, left: 12, right: 12),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ("Phone Number or Email")),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: 12, right: 12, top: 5, bottom: 12),
                      child: TextField(
                          obscureText: obcure,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obcure = !obcure;
                                  });
                                },
                                child: Icon(obcure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ))))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.transparent,
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return sign_in();
                    },));
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 160,
                          height: 1.5,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Or",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 160,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(
                  8.0,
                ),
                child: Container(
                  width: 370,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Create an Acount",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ]));
  }
}

// Center(
// child: Text(
// "Create an Acount",
// style: TextStyle(color: Colors.white,fontSize: 25),
// ))
