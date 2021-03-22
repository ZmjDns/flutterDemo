import 'package:flutter/material.dart';

class NewsContentPage extends StatefulWidget {
  Map arguments;
  NewsContentPage({this.arguments});
  @override
  _NewsContentPageState createState() => _NewsContentPageState();
}

class _NewsContentPageState extends State<NewsContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Text('传来数据${widget.arguments}'),
    );
  }
}
