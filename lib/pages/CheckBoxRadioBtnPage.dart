import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxRadioBtnPage extends StatefulWidget {
  @override
  _CheckBoxRadioBtnPageState createState() => _CheckBoxRadioBtnPageState();
}

class _CheckBoxRadioBtnPageState extends State<CheckBoxRadioBtnPage> {

  var isChecked = false;

  var sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选多选框'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('单选多选框'),
            Row(
              children: [
                Checkbox(
                  value: this.isChecked,
                  onChanged: (v){
                    setState(() {
                      this.isChecked = v;
                    });
                  },
                  activeColor: Colors.red,
                ),
                Text(this.isChecked ? '选中' : '未选中')
              ],
            ),
            Divider(),
            CheckboxListTile(
              value: this.isChecked,
              onChanged: (v){
                setState(() {
                  this.isChecked = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('子标题'),
            ),
            Divider(),
            CheckboxListTile(
              value: this.isChecked,
              onChanged: (v){
                setState(() {
                  this.isChecked = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('二级标题'),
              secondary: Icon(Icons.help),
            ),

            // RadioBtn
            Row(
              children: [
                Text('男'),
                Radio(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 20,),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: (v){
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 20,),
                Text('${this.sex} ${this.sex == 1 ? '男' : '女'}')
              ],
            ),

            // RadioListTile
            SizedBox(height: 10,),
            RadioListTile(
              value: 1,
              onChanged: (v){
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
              title: Text('标题'),
              subtitle: Text('二级标题'),
              secondary: Icon(Icons.height),
            ),
            SizedBox(height: 10,),
            RadioListTile(
              value: 2,
              onChanged: (v){
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
              title: Text('标题'),
              subtitle: Text('二级标题'),
              secondary: Icon(Icons.height),
            )
          ],
        ),
      )
    );
  }
}
