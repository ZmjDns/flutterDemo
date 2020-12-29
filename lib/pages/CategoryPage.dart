import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/components/tab/Tabs.dart';
import 'package:flutter_app_androidx/pages/FormPage.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: TabBar(
                  tabs: [
                    Tab(text: '热销',),
                    Tab(text: '推荐',),
                    Tab(text: '直播',),
                    Tab(text: '社区',)
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                RaisedButton(
                  child: Text('进入表单界面'),
                  onPressed: (){
                    /*Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FormPage(
                            title: '我是传值数据',
                          )
                        )
                      );*/
                    //通过命名路由跳转页面llllllllllll
                    Navigator.pushNamed(context, '/form');
                  },
                ),
                RaisedButton(
                  child: Text('点击注册'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/register');
                  },
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text('secondTab'),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text('直播'),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text('社区'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
