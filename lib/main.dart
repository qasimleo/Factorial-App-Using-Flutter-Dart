import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

int find(var value) {
  var fact = 1;
  for (var i = 2; i <= value; i++) {
    fact *= i;
  }
  return fact;
}

class MyAppState extends State<MyApp> {
  String data = "";
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculate Factorial'),
          backgroundColor: Colors.yellow.shade900,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('FIND THE FACTORIAL OF A NUMBER',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  width: 250.0,
                  margin: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textController,
                    decoration:
                        const InputDecoration(hintText: 'Enter A Number'),
                  ),
                ),
                Text(
                  data,
                  style: const TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: const Text('FIND'),
                  color: Colors.yellow.shade900,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      var value = int.parse(textController.text);
                      data =
                          'The factorial of ${textController.text} is ${find(value)}';
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
