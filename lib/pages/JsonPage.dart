import 'package:flutter/material.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSONPage'),
      ),
      body: Column(
        children: [
          Text('JSONPage')
        ],
      ),
    );
  }
}
