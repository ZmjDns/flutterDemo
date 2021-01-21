import 'package:flutter/material.dart';

/**
 * 必须继承StatefulWidget
 */
class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {  //  生命周期函数
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    // 监听_tabController改变
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {  //  生命周期函数，组件销毁的时候调用
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarControllerPage'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: [
            Tab(text: '热销',),
            Tab(text: '推荐',)
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          Center(child: Text('热销商品'),),
          Center(child: Text('推荐商品'),)
        ],
      ),
    );
  }
}
