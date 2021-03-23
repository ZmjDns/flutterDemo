import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsContentPage extends StatefulWidget {
  Map arguments;
  NewsContentPage({this.arguments});
  @override
  _NewsContentPageState createState() => _NewsContentPageState();
}

class _NewsContentPageState extends State<NewsContentPage> {

  List _dataList = [];

  @override
  void initState() {
    super.initState();
    print('传来数据:${widget.arguments}');
    _getHtmlData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: _dataList.length,
          itemBuilder: (context,index) {
            return Column(
              children: [
                ListTile(
                  title: Text(_dataList[index]['summary'],maxLines: 2,),
                ),
                Html(
                  data: _dataList[index]['content'],
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void _getHtmlData () async {
    var api = 'http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=20';
    var response = await Dio().get(api);
    setState(() {
      _dataList = json.decode(response.data)['result'];
      print('返回数据：${_dataList[0]}');
    });

  }


}
