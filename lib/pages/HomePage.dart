import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/pages/SearchPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RaisedButton(
            child: Text('进入搜索界面'),
            onPressed: (){
              //页面跳转
              /*Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchPage()
                )
              );*/
              //通过命名路由跳转(传参的情况下，直接传入arguments)
              Navigator.pushNamed(context, '/search',arguments: {'id': 123});
            },
          )
        ],
      ),
    );
  }
}
