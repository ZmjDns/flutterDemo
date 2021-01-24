import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormExercise extends StatefulWidget {
  @override
  _FormExerciseState createState() => _FormExerciseState();
}

class _FormExerciseState extends State<FormExercise> {

  var name = TextEditingController();
  var sex = 1;

  // @override
  // void initState() {
  //   super.initState();
  //   this.name.text = '';
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form实战'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '请输入姓名'
              ),
              controller: name,
            ),

            Row(
              children: [
                Text('男'),
                Radio(value: 1, groupValue: this.sex, onChanged: (v){setState(() {
                  this.sex = v;
                });}),
                SizedBox(width: 20,),
                Text('女'),
                Radio(value: 2, groupValue: this.sex, onChanged: (v){setState(() {
                  this.sex = v;
                });})
              ],
            )
          ],
        ),
      ),
    );
  }
}
