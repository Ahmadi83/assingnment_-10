import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> number = [];
  String displayText = "0";
  String operator = '';
  double firstOperand = 0;

  void _appendNumber(String num) {
    setState(() {
      if (number.length < 14) {
        number.add(num);
        displayText = number.join("");
      }
    });
  }

  void _handleOperator(String op) {
    setState(() {
      if (number.isNotEmpty) {
        firstOperand = double.parse(number.join(""));
        operator = op;
        number.clear();
        displayText = "0";
      }
    });
  }

  void _calculateResult() {
    setState(() {
      if (number.isNotEmpty) {
        double secondOperand = double.parse(number.join(""));
        double result;

        switch (operator) {
          case '+':
            result = firstOperand + secondOperand;
            break;
          case '-':
            result = firstOperand - secondOperand;
            break;
          case '*':
            result = firstOperand * secondOperand;
            break;
          case '/':
            result = firstOperand / secondOperand;
            break;
          default:
            result = secondOperand;
            break;
        }

        displayText = result.toString();
        number.clear();
        number.add(displayText);
        operator = '';
      }
    });
  }

  void _clear() {
    setState(() {
      number.clear();
      displayText = "0";
      operator = '';
      firstOperand = 0;
    });
  }

  Widget Makebutton(String text, int value) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3, top: 3, bottom: 3),
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            _appendNumber(value.toString());
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            shape: CircleBorder(),
            fixedSize: Size.fromRadius(43),
          ),
        ),
      ),
    );
  }

  Widget MakeCalculate_Button(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3, top: 3, bottom: 3),
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            if (text == '=') {
              _calculateResult();
            } else {
              _handleOperator(text);
            }
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent,
            shape: CircleBorder(),
            fixedSize: Size.fromRadius(43),
          ),
        ),
      ),
    );
  }

  Widget MakeAssign_Button(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3, top: 3, bottom: 3),
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            if (text == 'AC') {
              _clear();
            } else if (text == '+/-') {
              setState(() {
                if (number.isNotEmpty) {
                  if (number.first == '-') {
                    number.removeAt(0);
                  } else {
                    number.insert(0, '-');
                  }
                  displayText = number.join("");
                }
              });
            } else if (text == '%') {
              setState(() {
                if (number.isNotEmpty) {
                  double value = double.parse(number.join("")) / 100;
                  displayText = value.toString();
                  number.clear();
                  number.add(displayText);
                }
              });
            }
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            shape: CircleBorder(),
            fixedSize: Size.fromRadius(43),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      displayText,
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            const Divider(
              height: 2,
              thickness: 1.2,
              color: Colors.black,
              indent: 7,
              endIndent: 7,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MakeAssign_Button('AC'),
                MakeAssign_Button('+/-'),
                MakeAssign_Button('%'),
                MakeCalculate_Button('/')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Makebutton('7', 7),
                Makebutton('8', 8),
                Makebutton('9', 9),
                MakeCalculate_Button('*'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Makebutton('4', 4),
                Makebutton('5', 5),
                Makebutton('6', 6),
                MakeCalculate_Button('-')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Makebutton('1', 1),
                Makebutton('2', 2),
                Makebutton('3', 3),
                MakeCalculate_Button('+')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Makebutton('0', 0),
                Makebutton('0', 0),
                Makebutton('0', 0),
                MakeCalculate_Button('=')
              ],
            )
          ],
        ),
      ),
    );
  }
}
