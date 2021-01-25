import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormExercise extends StatefulWidget {
  @override
  _FormExerciseState createState() => _FormExerciseState();
}

class _FormExerciseState extends State<FormExercise> {

  var name = TextEditingController();
  String info = '';
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

  //爱好
  var hobbyList = [
    {
      'checked': true,
      'title': '吃饭'
    },
    {
      'checked': true,
      'title': '睡觉'
    },
    {
      'checked': true,
      'title': '撸码'
    }
  ];

  List<Widget> _getHobbyWidget () {
    List<Widget> tempList = [];
    for(var i = 0; i < this.hobbyList.length; i++) {
      tempList.add(
        Row(
          children: [
            Text(this.hobbyList[i]['title']),
            Checkbox(
              value: this.hobbyList[i]['checked'],
              onChanged: (v) {
                setState(() {
                  this.hobbyList[i]['checked'] = v;
                });
              }
            )
          ],
        )
      );
    }
    return tempList;
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

            // 爱好
            Column(
              children: this._getHobbyWidget(),
            ),

            // 输入框
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '描述信息',
                border: OutlineInputBorder()
              ),
              onChanged: (v){
                setState(() {
                  this.info = v;
                });
              },
            ),

            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('提交'),
                onPressed: (){
                  print(this.name.text);
                  print(this.sex);
                  print(this.hobbyList);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
