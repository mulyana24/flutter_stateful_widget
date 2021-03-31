import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void klikButton() {
    // setState berfungsi untuk merefresh tampilan stateFul Widget
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Counter with Stateful Widget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString(),
                  style: TextStyle(fontSize: 10 + number.toDouble())),
              RaisedButton(
                child: Text("Tambah"),
                onPressed: klikButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
