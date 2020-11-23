import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home.dart';

void main () => runApp(new MyApp());

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'title',
      home: HomePage(),
    );
  }
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow  //  app主题颜色
      ),
    );
  }

}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 2,
          maxLines: 3,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.deepOrange,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.deepPurple,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5
          ),
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.deepOrange,
            width: 5.0
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0)
          )
        ),

        //padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),

        //transform: Matrix4.translationValues(0, 100, 0),
        //transform: Matrix4.rotationZ(0.3),

        alignment: Alignment.bottomLeft,
      )
    );
  }

}