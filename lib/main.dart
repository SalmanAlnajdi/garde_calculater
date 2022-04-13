// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = new TextStyle(
        fontSize: 38, fontWeight: FontWeight.bold, color: Color(0xff7c7ded));

    final textStyle2 = new TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: Column(children: [
            Text("Grade Calculator", style: textStyle //TextStyle(
                //     fontSize: 37,
                //     fontWeight: FontWeight.bold,
                //     color: Color(0xff7c7ded)),
                ),
            Container(
                height: 300,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Color(0xff7c7ded)),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Math:", style: textStyle2),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Physics:", style: textStyle2),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Chemistry:", style: textStyle2),
                            ],
                          ),
                          Row(
                            children: [Text(".", style: textStyle2)],
                          ),
                          Row(
                            children: [Text(".", style: textStyle2)],
                          ),
                          Row(
                            children: [Text(".", style: textStyle2)],
                          )
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [Text("A", style: textStyle2)],
                          ),
                          Row(
                            children: [Text("B", style: textStyle2)],
                          ),
                          Row(
                            children: [Text("C", style: textStyle2)],
                          ),
                          Row(
                            children: [Text("", style: textStyle2)],
                          ),
                          Row(
                            children: [Text("", style: textStyle2)],
                          ),
                          Row(
                            children: [Text("", style: textStyle2)],
                          )
                        ]),
                  ],
                )),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xff7c7ded),
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
