import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/components/tab/Tabs.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('返回首页'),
            onPressed: (){
              // 普通返回首页路由设置
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Tabs()), (route) => route == null
              );
            },
          )
        ],
      ),
    );
  }
}
