import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/pages/FormPage.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text('进入表单界面'),
          onPressed: (){
            /*Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FormPage(
                  title: '我是传值数据',
                )
              )
            );*/
            //通过命名路由跳转页面llllllllllll
            Navigator.pushNamed(context, '/form');
          },
        ),
        RaisedButton(
          child: Text('点击注册'),
          onPressed: (){
            Navigator.pushNamed(context, '/register');
          },
        )
      ],
    );
  }
}
