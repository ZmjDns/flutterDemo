import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconContainer(Icons.home,color: Colors.black87,);
  }
}

/**
 * icon简单实现
 * icon封装
 * 必选参数在构造器参数列表中正常声明
 * 可选参数必选在参数列表中用{}包括
 */
class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;

  /**
   * [icon]必选
   * [color]和[size] 可选参数，用花括号抱起来
   * 默认参数必须要在构造器中赋值
    */
  IconContainer(this.icon,{this.color,this.size}){
    this.size = 32.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(icon,size: size,color: Colors.white,),
      ),
    );
  }

}
