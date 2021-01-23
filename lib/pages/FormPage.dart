import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title = '表单'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('back'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: TextFields(),
    );
  }
}


class TextFields extends StatefulWidget {
  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text('This is from page'),
          TextField(),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
                hintText: '请输入.....',
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
                hintText: '多行文本框',
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: '密码框',
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
                hintText: '用户',
                labelText: '用户名',
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: '密码',
                labelText: '密码',
                border: OutlineInputBorder()
            ),
          )
        ],
      ),
    );
  }
}

