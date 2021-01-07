import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random !!"),
        ),
        body: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var colors = [
    Colors.amber,
    Colors.white,
    Colors.blue,
    Colors.black,
  ];
  var cuurrent = Colors.white;
  var btncolor = Colors.black;

  setRandomcolor() {
    var rand = Random().nextInt(colors.length);
    var rand2 = Random().nextInt(colors.length);
    setState(() {
      cuurrent = colors[rand];
      btncolor = colors[rand2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cuurrent,
      child: Center(
        child: RaisedButton(
          color: btncolor,
          padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
          child: Text(
            "Change Itt!!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: setRandomcolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
}
