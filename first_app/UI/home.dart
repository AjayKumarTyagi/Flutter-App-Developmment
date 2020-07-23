import 'package:flutter/material.dart';

myapp()
{
  press1()
  {
    print("email clicked...");
  }
  press2()
  {
    print("alarm clicked");
  }
  var url = "https://raw.githubusercontent.com/AjayKumarTyagi/Flutter-App-Developmment/master/boscothepug.jpg";
  var myImage = Image.network(url,width: double.infinity, height: double.infinity);
  var myEmailIcon = Icon(Icons.email);
  var myAlarmIcon = Icon(Icons.access_alarms);
  var EmailButton = IconButton(icon: myEmailIcon, onPressed: press1);
  var alarmButton = IconButton(icon: myAlarmIcon, onPressed: press2);
  var mytext = Text("Bosco",textDirection: TextDirection.ltr, textAlign: TextAlign.center, );
  var appbar = AppBar(
    title: mytext,
    backgroundColor: Colors.blueGrey,
    leading: myImage,
    actions: <Widget>[EmailButton,alarmButton],
    );
    var myhome = Scaffold(
      appBar: appbar,
      body: myImage,
    );
  var design = MaterialApp(home: myhome, debugShowCheckedModeBanner: false,);
  return design;
}
