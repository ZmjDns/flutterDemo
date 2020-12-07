import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_androidx/components/AspectRatioCardView.dart';
import 'package:flutter_app_androidx/components/GridViewComp.dart';
import 'package:flutter_app_androidx/components/LayoutComp.dart';
import 'package:flutter_app_androidx/components/ListComp1.dart';
import 'package:flutter_app_androidx/components/stateful/homePage.dart';

import 'components/WrapLayoutComps.dart';

void main () => runApp(new MyApp());

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'title',
      home: HomePage(),
    );
  }
}*/
/**
 * 底部导航 BottomNavigationBar
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(
        primarySwatch: Colors.yellow  //  app主题颜色
      ),
    );
  }
}
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


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 2,
          maxLines: 3,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.deepOrange,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.deepPurple,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5
          ),
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.deepOrange,
            width: 5.0
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0)
          )
        ),

        //padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),

        //transform: Matrix4.translationValues(0, 100, 0),
        //transform: Matrix4.rotationZ(0.3),

        alignment: Alignment.bottomLeft,
      )
    );
  }
}

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1141259048,554497535&fm=26&gp=0.jpg',
          alignment: Alignment.centerLeft,

          // color: Colors.yellowAccent,
          // colorBlendMode: BlendMode.modulate, //混合颜色

          fit: BoxFit.cover,

          //repeat: ImageRepeat.repeatX,//沿着x轴平铺
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellowAccent
        ),
      ),
    );
  }
}

/**
 * 圆角图片
 */
class BorderRadiusImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LocalImage()//ClipRadius()//BorderRadiusContainer(),
    );
  }
}
/**
 * 处理圆角图片
 */
class BorderRadiusContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        //borderRadius: BorderRadius.all(Radius.circular(10.0))
        borderRadius: BorderRadius.circular(20.0),

        image: DecorationImage(
          image: NetworkImage('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1830914723,3154965800&fm=26&gp=0.jpg'),
          fit: BoxFit.cover
        )
        //borderRadius:
      ),
    );
  }
}
/**
 * 处理圆形图片
 */
class ClipRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: ClipOval(
        child: Image.network(
          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1830914723,3154965800&fm=26&gp=0.jpg',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class LocalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Image.asset(
        'images/a.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
