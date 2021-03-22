import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PullRefresh extends StatefulWidget {
  @override
  _PullRefreshState createState() => _PullRefreshState();
}

class _PullRefreshState extends State<PullRefresh> {
  int _page = 0;
  List _listData = [];
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    this.getData();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels > _scrollController.position.maxScrollExtent) {
        print('该加载更多数据了');
        // 滑动到了最底部
        getData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      // child: ListView(
      //   shrinkWrap: true,
      //   controller: _scrollController,
      //   children: _listData.map((e) {
      //     return ListTile(
      //       title: Text(e["title"]),
      //     );
      //   }).toList(),
      // ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: this._listData.length,
        controller: _scrollController,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(_listData[index]["title"]),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }

  Future<void> _refresh() async {
    print('开始刷新.....');
    await Future.delayed(Duration(seconds: 3), () {
      print('请求网络刷新数据');
    });
  }

  void getData () async {
    setState(() {
      _page++;
    });
    var api = "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$_page";
    var response = await Dio().get(api);
    print(response.data is String);
    setState(() {
      _listData.addAll(json.decode(response.data)["result"]);
      print(_listData.length);
      print(_listData);
    });
  }
}
