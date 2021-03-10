import 'package:flutter/material.dart';

class DialogsPage extends StatefulWidget {
  @override
  _DialogsPageState createState() => _DialogsPageState();
}

class _DialogsPageState extends State<DialogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('各种Dialog'),
      ),
      body: Column(
        children: [
          Text('dialog')
        ],
      ),
    );
  }
}
