import 'package:flutter/material.dart';

class TestLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListComp1(),
    );
  }
}
/**
 * 普通list
 */
class ListComp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          title: Text(
            '2020年新出-第14讲以后是Flutter教程',
            style: TextStyle(
              fontSize: 24
            ),
          ),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        ),
        ListTile(
          title: Text('2020年新出-第14讲以后是Flutter教程'),
          subtitle: Text('Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程'),
        )
      ],
    );
  }

}