import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxRadioBtnPage extends StatefulWidget {
  @override
  _CheckBoxRadioBtnPageState createState() => _CheckBoxRadioBtnPageState();
}

class _CheckBoxRadioBtnPageState extends State<CheckBoxRadioBtnPage> {

  var isChecked = false;
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
            )
          ],
        ),
      )
    );
  }
}
