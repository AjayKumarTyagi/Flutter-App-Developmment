import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
main() {
  runApp(MyApp());
}

mydate()
async {
  var url = "http://192.168.43.5/cgi-bin/mydate.py";
  var r = await http.get(url);
  var data = r.body;
  print(data);
}

mycal()
async {
  var url = "http://192.168.43.5/cgi-bin/mycal.py";
  var r = await http.get(url);
  var data = r.body;
  print(data);
}

mybody()
{
  return  Column(
    children: <Widget>[
      RaisedButton(
        onPressed: mydate,
        child: Text("Date"),
        ),
        RaisedButton(
          onPressed: mycal,
          child: Text("Cal"),
        )
    ],
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("My Web Application"),
      ),
      body: mybody(),
      ),
      );
  }
}
