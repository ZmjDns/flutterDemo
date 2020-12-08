import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/components/stateful/homePage.dart';

/**
 * 自定义底部Tab组件
 */
class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  //动态设置选中tab
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlutterDemo'),),
      body: ListAdder(),//HomePage(),
      //WrapLayoutPage(),
      //AspectRatioPage(),
      //LayoutPage(),
      //GridViewPage(),
      //TestLists(),
      //BorderRadiusImage()//ImageContainer()
      //HomeContent(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
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
    );
  }
}