import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_androidx/res/ListData.dart';

class TestLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DynamicList3(),//DynamicList2(),//DynamicList1(),//ListComp5(),//ListComp4(),//ListComp3()//ListComp2(),//ListComp1(),
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

class ListComp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.local_airport,color: Colors.red,),
          trailing: Icon(Icons.ac_unit,color: Colors.red,),
          title: Text(
            '教程前14讲是Dart基础，第15讲开始讲的是Flutter。',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            '如果你想用Flutter开发app的话，你首先必须得会Dart。此教程由IT营大地老师录制，更新于2020年。',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.local_airport,color: Colors.red,),
          trailing: Icon(Icons.ac_unit,color: Colors.red,),
          title: Text(
            '教程前14讲是Dart基础，第15讲开始讲的是Flutter。',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            '如果你想用Flutter开发app的话，你首先必须得会Dart。此教程由IT营大地老师录制，更新于2020年。',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black87
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.local_airport,color: Colors.red,),
          trailing: Icon(Icons.ac_unit,color: Colors.red,),
          title: Text(
            '教程前14讲是Dart基础，第15讲开始讲的是Flutter。',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            '如果你想用Flutter开发app的话，你首先必须得会Dart。此教程由IT营大地老师录制，更新于2020年。',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black87
            ),
          ),
        )
      ],
    );
  }

}

class ListComp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.network(
            'https://scpic.chinaz.net/files/pic/pic9/202011/apic29138.jpg',
            width: 80,
            height: 120,
            fit: BoxFit.cover,
          ),
          title: Text(
            '高清图片栏目收集:人物图片,背景图片,高清图片,卡通图片,美女图片,非主',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              color: Colors.cyanAccent
            ),
          ),
          subtitle: Text(
            '会多少次啊伴随放大上吊身亡滴哦害得我和年底我拿到我i能启动我i去哦单位hi哦好你都去哪玩i都劝我',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ListTile(
          leading: Image.network(
            'https://scpic.chinaz.net/files/pic/pic9/201807/zzpic12710.jpg',
            width: 80,
            height: 120,
            fit: BoxFit.cover,
          ),
          title: Text(
            '高清图片栏目收集:人物图片,背景图片,高清图片,卡通图片,美女图片,非主',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 18,
                color: Colors.cyanAccent
            ),
          ),
          subtitle: Text(
            '会多少次啊伴随放大上吊身亡滴哦害得我和年底我拿到我i能启动我i去哦单位hi哦好你都去哪玩i都劝我',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ListTile(
          leading: Image.network(
            'https://scpic.chinaz.net/files/pic/pic9/202011/apic29135.jpg',
            width: 80,
            height: 120,
            fit: BoxFit.cover,
          ),
          title: Text(
            '高清图片栏目收集:人物图片,背景图片,高清图片,卡通图片,美女图片,非主',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 18,
                color: Colors.cyanAccent
            ),
          ),
          subtitle: Text(
            '会多少次啊伴随放大上吊身亡滴哦害得我和年底我拿到我i能启动我i去哦单位hi哦好你都去哪玩i都劝我',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
  
}
/**
 * list中放除ListTile之外的组件，图文列表
 */
class ListComp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          height: 20,
          child: Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87
            ),
          ),
        ),
        Image.network('https://www.itying.com/images/flutter/2.png'),
        Container(
          height: 20,
          child: Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black87
            ),
          ),
        ),
        Image.network('https://www.itying.com/images/flutter/3.png'),
        Container(
          height: 20,
          child: Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black87
            ),
          ),
        ),
        Image.network('https://www.itying.com/images/flutter/4.png'),
        Container(
          height: 20,
          child: Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black87
            ),
          ),
        ),
      ],
    );
  }

}

/**
 * 水平列表
 */
class ListComp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.topCenter,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 100,
            // height: 80,  //水平列表竖直方向默认沾满，height不起作用，需要用listView的父布局约束高度
            color: Colors.blue,
            child: Center(
              child: Text(
                '我是1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            child: Text(
              '我是2',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
          ),
          Container(
            width: 100,
            child: Text(
              '我是3',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
          ),
          Container(
            width: 100,
            child: Text(
              '我是4',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
          ),
          Container(
            width: 100,
            child: Image.network('https://www.itying.com/images/flutter/1.png'),
          )
        ],
      ),
    );
  }

}


class DynamicList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }

  /**
   * 私有方法
   */
  List<Widget> _getData() {
    List<Widget> list = List();

    for(var i = 0; i < 20; i++) {
      list.add(
        ListTile(
          title: Text('我是标题$i'),
          subtitle: Text('我是子标题$i'),
        )
      );
    }

    return list;

    /*return [
      ListTile(
        title: Text('我是标题1'),
        subtitle: Text('我是子标题1'),
      ),
      ListTile(
        title: Text('我是标题1'),
        subtitle: Text('我是子标题1'),
      ),
      ListTile(
        title: Text('我是标题1'),
        subtitle: Text('我是子标题1'),
      ),
      ListTile(
        title: Text('我是标题1'),
        subtitle: Text('我是子标题1'),
      )
    ];*/
  }

}
/**
 * 引入外部数据，动态实现图文列表
 */
class DynamicList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }
  
  List<Widget> _getData () {

    /*var tempList = listData.map((e){
      return ListTile(
          leading: Image.network(e['imageUrl']),
          title: Text(e['title']),
          subtitle: Text(e['author'])
      );
    });*/
    var tempList = listData.map((e) => ListTile(
      leading: Image.network(e['imageUrl']),
      title: Text(e['title']),
      subtitle: Text(e['author']),
    ));

    return tempList.toList();
  }

}

/**
 * ListView.builder实现listView
 */

class DynamicList3 extends StatelessWidget {

  // List _listData;

  // DynamicList3 () {
  //   // for(var i = 0; i < 10; i++) {
  //   //   _listData.add('我是第$i条数据');
  //   // }
  //   _listData = listData;
  // }

  Widget _getListitem (context, index) {
    return ListTile(
      leading: Image.network(listData[index]['imageUrl']),
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: _getListitem
    );
  }

}
