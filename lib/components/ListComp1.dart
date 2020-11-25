import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TestLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListComp3()//ListComp2(),//ListComp1(),
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