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
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.network('https://static.vecteezy.com/system/resources/thumbnails/000/413/212/small/1156.jpg',
                          height: 70.0,
                          width: 150.0,
                        ),
                        SizedBox(width: 50.0),
                        Row(
                          children: <Widget>[
                            Text('Hello World',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lobster',
                              ),
                            ),
                            SizedBox(width: 15.0),
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://cdn.dribbble.com/users/2498377/screenshots/6614953/dar_illus_2x.jpg'),
                              maxRadius: 25.0,
                            )
                          ], 
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Stack(
                          // alignment: Alignment.center,
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Container(
                              height: 350.0,
                              width: 400.0,
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
                                padding: EdgeInsets.only(top: 50.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(' I\'m Hardik Kumar ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 48.0,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Billabong'
                                      )
                                    ),
                                    SizedBox(height: 15.0),
                                    Text('- Contact Me -',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28.0,
                                        fontFamily: 'ComicNeue',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 18.0),
                                    Text('LinkedIn: Hardik Kumar\nGitHub: Hardikkr\nGmail:\n hardik.kumar18feb@gmail.com',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontFamily: 'ComicNeue',
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: -42.0,
                              top: -60.0,
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
                        Text(' Hiii, I am hardik kumar\n\n An Undergraduate,\n(Computer Science and Engineering) student,\n at Vellore Institute of Technology, Bhopal.\n Now-a-days working on\n Android and iOS app Development\n as well as Web Development.',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Billabong',
                            fontSize: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed: null,
          //   label: Text('   THIS WEBSITE ISN\'T STABLE  ',
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(30.0),
          //     )
          //   ),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),
    );
  }
}