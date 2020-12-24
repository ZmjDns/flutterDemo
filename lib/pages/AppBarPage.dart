import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppbarPage'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text('111111111')
        ],
      ),
    );
  }
}
