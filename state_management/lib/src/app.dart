import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int times = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: Column(
          children: [
            Center(
              child: Text("Like my picture $times."),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              times++;
            });
          },
          child: Icon(
            Icons.favorite,
          ),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
