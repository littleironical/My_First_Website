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
                colors: [Colors.orange, Colors.yellow, Colors.orange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            ),
            // child: Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(30.0)),
            //     border: Border.all(
            //       color: Color(0xFF494D55),
            //       width: 10.0,
            //       style: BorderStyle.solid,
            //     ),
            //   ),
            //   alignment: Alignment.center,
            // ),
          ),
        ),
    );
  }
}