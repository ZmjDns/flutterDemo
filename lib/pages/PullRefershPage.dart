import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HttpDemo extends StatefulWidget {
  HttpDemo({Key key}) : super(key: key);
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  ScrollController _scrollController = ScrollController(); //listview 的控制器
  List _list = [];
  int _page = 1;
  bool isLoading = false; //是否正在加载数据
  @override
  void initState() {
    super.initState();
    this._getData();
    _scrollController.addListener(() {
      // print('滑动距离${_scrollController.position.pixels}-------->最大距离 ${_scrollController.position.maxScrollExtent}');
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 20) {

        print('滑动到了最底部......................');
        _getData();
      }
    });
  }

  _getData() async {
    var apiUrl =
        "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this._page}";
    Response result = await Dio().get(apiUrl);
// print(json.decode(result.data)["result"]);
    setState(() {
      this._list.addAll(json.decode(result.data)["result"]);
      print('当前页数${_page} ->当前数量${_list.length}');
      this._page++;
    });
  }

  /**
   * 加载更多时显示的组件,给用户提示
   */
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh() async {
    print('执行刷新');
// this._getData();
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("请求数据 Dio Demo"),
        ),
        body: this._list.length > 0
            ? RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                    itemCount: this._list.length,
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      if (index == this._list.length - 1) {
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title:
                                  Text(this._list[index]["title"], maxLines: 1),
                              onTap: () {
                                Navigator.pushNamed(context, '/newsContent');
                              },
                            ),
                            Divider(),
                            _getMoreWidget()
                          ],
                        );
                      } else {
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title:
                                  Text(this._list[index]["title"], maxLines: 1),
                              onTap: () {
                                Navigator.pushNamed(context, '/newsContent');
                              },
                            ),
                            Divider()
                          ],
                        );
                      }
                    }))
            : _getMoreWidget());
  }
}
