import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var height, width;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.white
      ),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(height*0.1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              border: Border.all(
                color: Colors.grey,
                width: 10.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ),
    );
  }
}