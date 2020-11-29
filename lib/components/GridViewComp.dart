import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_androidx/res/ListData.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DynamicGridView4(),
      //DynamicGridView3(),//DynamicGridView2(),//DynamicGridView1(),//GridViewComp1(),
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

/**
 * 用Colum实现GridView中item垂直布局
 */
class DynamicGridView2 extends StatelessWidget {

  List<Widget> _getGridViewDataList() {
    var tempList = listData.map((e) => _gridViewItem(e));

    return tempList.toList();
  }

  Widget _gridViewItem(e) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Color.fromRGBO(233, 233, 233, 0.9),
          width: 1,
        )
      ),
      child: Column(
        children: [
          Image.network(e['imageUrl']),
          SizedBox(height: 10,),//Text没有margin/padding  通过SizedBox将text与上面的图片拉开间距（也可以用Container）
          Text(
            e['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      // childAspectRatio: 0.7,
      children: _getGridViewDataList(),
    );
  }

}

/**
 * GridView.builder实现GridView
 */
class DynamicGridView3 extends StatelessWidget {

  Widget _getItemWidget (context, index){
    return Container(
      child: Column(
        children: [
          Image.network(listData[index]['imageUrl']),
          Text(listData[index]['title']),
          Text(listData[index]['author'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,

        ),
        itemCount: listData.length,
        itemBuilder: _getItemWidget,
      ),
    );
  }

}

/**
 * PaddingRow 组件结合GridView
 */
class DynamicGridView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/6.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/5.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }

}


