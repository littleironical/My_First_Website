import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// var height, width;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // height = MediaQuery.of(context).size.height;
    // width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white
      ),
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.5, 1],
                colors: [Colors.orange, Colors.yellow],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
              child: Container( 
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                  // border: Border.all(
                  //   color: Color(0xFF494D55),
                  //   width: 10.0,
                  //   style: BorderStyle.solid,
                  // ),
                ),
                alignment: Alignment.bottomCenter,
                child: Column(
                  
                ),
              ),
            ),
          ),
        ),
    );
  }
}