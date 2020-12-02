import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedBtn();
  }
}
/**
 * 自定义按钮封装
 * Wrrap组件的使用
 */
class RaisedBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 600,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,  //水平间距
        runSpacing: 10, //垂直间距
        direction: Axis.vertical, //垂直一列一列分布
        runAlignment: WrapAlignment.spaceAround,  //垂直方向分布
        alignment: WrapAlignment.center,
        children: [
          MyButton('第一季'),
          MyButton('第二季'),
          MyButton('第三季'),
          MyButton('第四季'),
          MyButton('第五季'),
          MyButton('第六季'),
          MyButton('第七季'),
          MyButton('第八季'),
          MyButton('第九季'),
          MyButton('第十季'),
          MyButton('第十一季'),
          MyButton('第十二季'),
          MyButton('第十三季'),
          MyButton('第十四季'),
          MyButton('第十五季'),
          MyButton('第十六季'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text,{Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      color: Colors.blue,
      textColor: Theme.of(context).accentColor,
      onPressed: () {

      },
    );
  }

}
