import 'dart:convert';

import 'package:flutter/material.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {

  @override
  void initState() {
    super.initState();
    _encodeMap2Json();
    _decodeJson2Map();
  }

  _encodeMap2Json() {
    Map user = {
      'userName': '张三',
      'age': 20
    };
    print(json.encode(user));
  }
  _decodeJson2Map() {
    String jsonStr = '{"userName": "ZhangSan","age":20}';
    Map user = json.decode(jsonStr);
    print(user['userName'] + user['age'].toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSONPage'),
      ),
      body: Column(
        children: [
          Text('JSONPage')
        ],
      ),
    );
  }
}
