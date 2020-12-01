import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_androidx/res/ListData.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicCardList();//CardComp2();//CardComp1();//AspectRatio2();//LayoutSimpleAspect();
  }
}
/**
 * 简单的AspectRatio相对与父盒子设置比例
 */
class LayoutSimpleAspect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.yellowAccent,
      child: AspectRatio(
        aspectRatio: 2.0/1.0,   //相对与父盒子设置比例
        child: Container(
          color: Colors.tealAccent,
        ),
      ),
    );
  }
}
/**
 * 相对与屏幕设置比例
 */
class AspectRatio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0/1.0, //相对于整个屏幕调整宽高比
      child: Container(
        color: Colors.yellowAccent,
      ),
    );
  }

}

class CardComp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text('张三'),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXXXXX'),
              ),
              ListTile(
                title: Text('地址：XXXXXXXX'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text('李四'),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXXXXX'),
              ),
              ListTile(
                title: Text('地址：XXXXXXXX'),
              ),
            ],
          ),
        )
      ],
    );
  }
}

/**
 * 通过卡片组件实现商品图文数据
 */
class CardComp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://www.itying.com/images/flutter/1.png', fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text('我是标题'),
                subtitle: Text('我是副标题'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://www.itying.com/images/flutter/2.png', fit: BoxFit.cover,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.itying.com/images/flutter/2.png',),
                ),
                title: Text('我是标题'),
                subtitle: Text('我是副标题'),
              )
            ],
          ),
        )
      ],
    );
  }

}
/**
 * 动态生成listCard
 */
class DynamicCardList extends StatelessWidget {

  List _getLists() {
    var tempList =  listData.map((e) =>
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(e['imageUrl'],fit: BoxFit.cover,),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(e['imageUrl']),
              ),
              title: Text(e['title']),
              subtitle: Text(e['author']),
            )
          ],
        ),
      )
    );

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getLists(),
    );
  }

}