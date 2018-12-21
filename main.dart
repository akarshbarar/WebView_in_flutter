import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WEbView DEmo",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("WEB VIEW DEMO"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications),),
          IconButton(icon: Icon(Icons.search),),
        ],
      ),
      url: "https://www.google.com",
      initialChild: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
