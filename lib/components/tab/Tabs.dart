import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/pages/CategoryPage.dart';
import 'package:flutter_app_androidx/pages/HomePage.dart';
import 'package:flutter_app_androidx/pages/MinePage.dart';
import 'package:flutter_app_androidx/pages/SettingPage.dart';

/**
 * 自定义底部Tab组件
 */
class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index = 0}): super(key: key);
  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  //动态设置选中tab
  int _currentIndex;

  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    MinePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlutterDemo'),),  // 去掉顶部app标题
      body: this._pageList[this._currentIndex],
      //ListAdder(),//HomePage(),
      //WrapLayoutPage(),
      //AspectRatioPage(),
      //LayoutPage(),
      //GridViewPage(),
      //TestLists(),
      //BorderRadiusImage()//ImageContainer()
      //HomeContent(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  //配置底部大于3个tab
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 36.0, //设置底部图标大小
        fixedColor: Colors.blue,  //设置选中的颜色
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: '分类'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '设置'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department),
              label: '我的'
          )
        ],
      ),
      drawer: Drawer(
        child: Text('Hello Flutter'),
      ),
      endDrawer: Text('rightDrawer'),
    );
  }
}