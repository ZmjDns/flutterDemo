import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/res/ListData.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DynamicGridView1(),//GridViewComp1(),
    );
  }
}
/***
 * 简单的GridView实现
 */
class GridViewComp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Text('this is a Baster'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text')
      ],
    );
  }
}
/**
 * 动态设置GridView，并调整item的宽高比例
 */
class DynamicGridView1 extends StatelessWidget {

  List<Widget> _getGridViewItem (){

    return listData.map((e) =>
        Container(
          alignment: Alignment.center,
          child: Text(e['title']),
          color: Colors.yellow,
        ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,  //每行的列数
      mainAxisSpacing: 10,//主轴上下两行的间距
      crossAxisSpacing: 10,//交叉轴每列左右间距
      padding: EdgeInsets.all(10),//设置外边距
      childAspectRatio: 0.7,    //调整子容器宽高比例（直接设置宽高不起作用）
      children: _getGridViewItem(),
    );
  }

}
