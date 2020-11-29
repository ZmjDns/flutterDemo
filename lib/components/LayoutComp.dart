import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutExpandedComp1();//LayoutColumn1();//RowLayout1();
    //IconContainer(Icons.home,color: Colors.black87,);
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
      height: 48,
      width: 48,
      color: this.color,
      child: Center(
        child: Icon(icon,size: size,color: Colors.white,),
      ),
    );
  }

}

/**
 * 水平布局组件 row的基本使用
 */
class RowLayout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconContainer(Icons.home,color: Colors.blue,),
          IconContainer(Icons.contact_page_outlined,color: Colors.orange,),
          IconContainer(Icons.local_airport,color: Colors.purpleAccent,),
          IconContainer(Icons.person,color: Colors.pinkAccent,)
        ],
      ),
    );
  }

}

/**
 * 垂直布局组件 row的基本使用
 */
class LayoutColumn1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 600,
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconContainer(Icons.home,color: Colors.blue,),
          IconContainer(Icons.contact_page_outlined,color: Colors.orange,),
          IconContainer(Icons.local_airport,color: Colors.purpleAccent,),
          IconContainer(Icons.person,color: Colors.pinkAccent,)
        ],
      ),
    );
  }

}


/**
 *Expanded组件
 */
class LayoutExpandedComp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child:IconContainer(Icons.home,color: Colors.blue,),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.contact_page_outlined,color: Colors.orange,),
        ),
        IconContainer(Icons.local_atm,color: Colors.red,),
      ],
    );
  }
}
