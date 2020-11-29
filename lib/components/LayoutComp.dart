import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StackPractice();//LayoutStack3();//LayoutStack2();//LayoutStack1();
    //LayoutPractice();//LayoutExpandedComp1();//LayoutColumn1();//RowLayout1();
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

/**
 * 布局组件综合练习
 */
class LayoutPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          color: Colors.black87,
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
              )
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: [
                    Container(
                      height: 85,
                      child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 85,
                      child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,),
                    ),
                  ],
                )
              ),
            )
          ],
        )
      ],
    );
  }
}
/**
 * stack简单定位
 */
class LayoutStack1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.bottomRight,//所有的元素都居中
      alignment: Alignment(-1,0.3),
      children: [
        Container(
          width: 200,
          height: 400,
          color: Colors.red,
        ),
        Text('我是一个文本222222'),
      ],
    );
  }
}
/**
 * Stack结合Align实现多个子组件任何位置定位
 */
class LayoutStack2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.search,size: 32,color: Colors.tealAccent,),
            ),
            Align(
              alignment: Alignment(0,0.3),
              child: Icon(Icons.ac_unit,size: 40,color: Colors.white,),
            ),
            Align(
              alignment: Alignment(1,1),
              child: Icon(Icons.send,size: 40,color: Colors.orange,),
            )
          ],
        ),
      ),
    );
  }

}

/**
 * Posined结合Stack实现多个子View定位
 */
class LayoutStack3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              child: Icon(Icons.ac_unit,size: 32,color: Colors.white,),
            ),
            Positioned(
              left: 30,
              top: 20,
              child: Icon(Icons.send,size: 40,color: Colors.tealAccent,),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: Icon(Icons.home,size: 32,color: Colors.tealAccent,),
            )
          ],
        ),
      ),
    );
  }
}


