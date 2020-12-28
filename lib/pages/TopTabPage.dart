import 'package:flutter/material.dart';

class TopTabPage extends StatefulWidget {
  @override
  _TopTabPageState createState() => _TopTabPageState();
}

class _TopTabPageState extends State<TopTabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TopTabPage'),
          bottom: TabBar(
            tabs: [
              Tab(text: '热门',),
              Tab(text: '分类',)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ListTile(
                  title: Text('我是热门'),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text('我是分类'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
