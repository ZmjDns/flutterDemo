import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Home'),
      ),
      //drawer: ,
      body: Center(
        child: Text(
          'ZMJ Flutter Demo',
          style: Theme.of(context).textTheme.headline4,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}