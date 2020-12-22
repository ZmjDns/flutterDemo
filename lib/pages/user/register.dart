import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('点击登录'),
            onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text(('返回')),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text('替换当前界面（替换路由）'),
            onPressed: (){
              // 替换路由
              Navigator.of(context).pushReplacementNamed('/login');
            },
          )
        ],
      ),
    );
  }
}
