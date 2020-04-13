import 'dart:ui';

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Center(
                      child: Stack(
                        alignment: Alignment.center,
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            height: 350.0,
                            width: 320.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.5, 1],
                                colors: [Colors.orange, Colors.yellow],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 35.0),
                              child: Text('I\'m Hardik Kumar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 48.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Billabong'
                                )
                              ),
                            ),
                          ),
                          Positioned(
                            left: -42.0,
                            top: -70.0,
                            child: Container(
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                 color: Colors.black,
                              ),
                              height: 100.0,
                              width: 300.0,
                              child: Center(
                                child: Text('WELCOME',
                                textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 52.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Text('Hi i am hardik kumar\n\nAn Undergraduate,\n(Computer Science and Engineering) student,\nat Vellore Institute of Technology, Bhopal.\nNow-a-days working on\nAndroid and iOS app Development\nas well as Web Development.',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Billabong',
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: null,
            label: Text('   THIS WEBSITE ISN\'T STABLE  ',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              )
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),
    );
  }
}