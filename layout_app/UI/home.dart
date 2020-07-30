import 'package:flutter/material.dart';

myapp()
{
  var mybody = Container(
    decoration: BoxDecoration(
      color: Colors.grey,
    ),
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,

          ),
          margin: EdgeInsets.all(75),
          width: 300,
          height: 300,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(75),
            border: Border.all(
              color: Colors.yellowAccent,
              width: 3,
            )
          ),
          alignment: Alignment.topCenter,
          width: 150,
          height: 150,
        )
      ],)
  );
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.amber,
      ),
      body: mybody,
    ),
  );
}
