import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * StatelessWidget的子类无法更改组件的状态
 */
class HomePage extends StatelessWidget {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${this._count}'),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('btn'),
          onPressed: () {
            this._count++;
            print(this._count);
          },
        ),
      ],
    );
  }
}
/**
 * 有状态组件
 * 快速生成StastefulWidget的快捷键   stful
 */
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Chip(
            label: Text('${this.num}'),
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text('CountNum'),
            onPressed: (){
              setState(() {
                this.num++;
              });
            },
          )
        ],
      ),
    );
  }
}
/**
 * 动态增加的有状态LIstView组件
 */
class ListAdder extends StatefulWidget {
  @override
  _ListAdderState createState() => _ListAdderState();
}

class _ListAdderState extends State<ListAdder> {

  List _list = List();
  var num = 0;
  addListData () {
    this._list.add('我是标题${this.num++}');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this._list.map((e) => Text(e)).toList(),
        ),
        SizedBox(height: 10,),
        RaisedButton(
          child: Text('btn'),
          onPressed: () {
            setState(() {
              this.addListData();
            });
          },
        )
      ],
    );
  }
}
