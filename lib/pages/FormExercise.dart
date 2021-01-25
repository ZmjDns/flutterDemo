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

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }
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
                Radio(value: 1, groupValue: this.sex, onChanged: this._sexChanged), //  注意这里的this._sexChanged是将此方法赋给onChanged属性而不是调用
                SizedBox(width: 20,),
                Text('女'),
                Radio(value: 2, groupValue: this.sex, onChanged: this._sexChanged)
              ],
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('提交'),
                onPressed: (){
                  print(this.name.text);
                  print(this.sex);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
