import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp()
{
  press1()
  {
    var msg = Fluttertoast.showToast(
        msg: "Email pressed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    return msg;
  }
  press2()
  {
    var msg1 = Fluttertoast.showToast(
        msg: "Alarm pressed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    return msg1;
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
