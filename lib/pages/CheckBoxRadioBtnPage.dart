import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxRadioBtnPage extends StatefulWidget {
  @override
  _CheckBoxRadioBtnPageState createState() => _CheckBoxRadioBtnPageState();
}

class _CheckBoxRadioBtnPageState extends State<CheckBoxRadioBtnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选多选框'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('单选多选框')
          ],
        ),
      )
    );
  }
}
