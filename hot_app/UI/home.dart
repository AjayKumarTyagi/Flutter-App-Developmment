import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

myapp()
{
  var mybody = Container(
  alignment: Alignment.bottomCenter,
  width: 300,
  height: 300, 
  decoration: BoxDecoration(
  image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://raw.githubusercontent.com/AjayKumarTyagi/Flutter-App-Developmment/master/pic.jpg"),
  ),
  color: Colors.indigoAccent,
  borderRadius: BorderRadius.circular(20.0),
  border: Border.all(
    width: 5,
    color: Colors.amber,
  ),
  ),
  child: Text("Ajay Kumar Tyagi",
  style: TextStyle( color: Colors.yellowAccent  , fontSize: 32),),
  );
  
  var myhome = Scaffold(
  appBar: AppBar(
  title: Text("HOME"),
  ),
  body:  Center(child: mybody),
  );
  return MaterialApp(home: myhome);
}
