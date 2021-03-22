import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRefreshPage extends StatefulWidget {
  @override
  _MyRefreshPageState createState() => _MyRefreshPageState();
}

class _MyRefreshPageState extends State<MyRefreshPage> {

  List _list = [];
  int _pageNum = 1;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    print('_MyRefreshPageState。。。。。。。。。。。。。。');
    _getData();
    _scrollController.addListener(() {  //会出现滑动一次调用接口多次的情况
      // print('滑动距离${_scrollController.position.pixels}-------->最大距离 ${_scrollController.position.maxScrollExtent}');
      if (_scrollController.position.pixels > _scrollController.position.maxScrollExtent - 20) {
        print('滑到底部了。。。。。。。。。。。。。。');
        _getData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('下拉刷新'),
      ),
      body: _list.length > 0 ? _refreshWid() : _loadMore(),
    );
  }

  Widget _refreshWid () {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.builder(
        itemCount: _list.length,  //必须要有，不然渲染list的时候报错
        controller: _scrollController,
        itemBuilder: (context, index){
          if(index == _list.length - 1) {
            return Column(
              children: [
                ListTile(
                  title: Text('${index}->${_list[index]['title']}'),
                  subtitle: Text(_list[index]['dateline']),
                ),
                Divider(),
                _loadMore()
              ],
            );
          } else {
            return ListTile(
              title: Text(_list[index]['title']),
              subtitle: Text(_list[index]['dateline']),
              onTap: () {
                print('点击了${_list[index]}');
              },

            );
          }
        },
      ),
    );
  }

  Widget _loadMore() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('加载中...'),
          CircularProgressIndicator(strokeWidth: 1.0,)
        ],
      ),
    );
  }

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 0), (){
      print('开始刷新.........................');
      setState(() {
        this._list = [];
        _pageNum = 1;
        _getData();
      });
    });
  }

  _getData() async {
    var api = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this._pageNum}';
    var response = await Dio().get(api);
    setState(() {
      _list.addAll(json.decode(response.data)['result']);
      _pageNum++;
      // print(_list);
    });
  }

}
