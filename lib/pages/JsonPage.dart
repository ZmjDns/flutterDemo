import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {

  List _list= [];

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
      body: _pageWidgets(),
    );
  }

  _pageWidgets() {
    return Column(
      children: [
        RaisedButton(
          child: Text('Get请求'),
          onPressed: (){
            _getNetData();
          },
        ),
        // this._list.length > 0 ? ListView(
        //     shrinkWrap: true,
        //     children: this._list.map((e){
        //       return ListTile(
        //         title: Text(e['title']),
        //       );
        //     }).toList()
        // ) : Text('正在加载....'),
        this._list.length > 0 ? ListView.builder(
          itemCount: this._list.length,
          shrinkWrap: true,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(this._list[index]['title']),
            );
          },
        ) : Text('正在加载....'),
      ],
    );
  }

  _getNetData() async {
    var api = 'http://a.itying.com/api/productlist';
    var response = await http.get(api);
    if (response.statusCode == 200) {
      setState(() {
        this._list = json.decode(response.body)['result'];
        print(_list is List);
      });
    } else {
      print(response.statusCode);
    }
  }
}
