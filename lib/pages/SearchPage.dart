import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  //接收入参配置
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('收索界面'),
      ),
      body: Text('收索界面内容区域 ${this.arguments == null ? 'null00' : this.arguments['id']}'),
    );
  }
}
