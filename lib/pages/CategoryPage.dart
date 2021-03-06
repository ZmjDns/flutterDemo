import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/components/PullRefresh.dart';
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
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.deepOrange,  // 底部选中指示器颜色
                  indicatorSize: TabBarIndicatorSize.label, //  底部指示器长度
                  labelColor: Colors.deepOrange,  //  选中文字颜色
                  unselectedLabelColor: Colors.black, //  未选中文字颜色
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
                    //通过命名路由跳转页面lllllllllllllllllllllllllllllllllllllllllllllllllllll
                    Navigator.pushNamed(context, '/form');
                  },
                ),
                RaisedButton(
                  child: Text('单选多选框'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/checkBoxRadioBtn');
                  },
                ),
                SizedBox(height: 10,),
                RaisedButton(
                  child: Text('Form练习'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/formExercise');
                  },
                ),
                RaisedButton(
                  child: Text('日期组件'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/datePage');
                  },
                ),
                RaisedButton(
                  child: Text('轮播图'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/swiperPage');
                  },
                ),
                RaisedButton(
                  child: Text('点击注册'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/register');
                  },
                ),
                RaisedButton(
                  child: Text('各种弹窗'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/dialogsPage');
                  },
                ),
                RaisedButton(
                  child: Text('JSON数据处理'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/JsonPage');
                  },
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: PullRefresh(), //  推荐tab 有问题
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

  Widget recommend () {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 3));
            return Future.value(true);
          },
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text('cakmckmaisomciaosicma'),
              ),
              ListTile(
                title: Text('cakmckmaisomciaosicma'),
              ),
              ListTile(
                title: Text('cakmckmaisomciaosicma'),
              ),
              ListTile(
                title: Text('cakmckmaisomciaosicma'),
              ),
              ListTile(
                title: Text('cakmckmaisomciaosicma'),
              ),
              ListTile(
                title: Text('cakmckmaisomciaosicma'),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _onRefresh () async {
    await Future.delayed(
      Duration(seconds: 3),
        () {
        print('kkkkkkkkkkkkkkkkkkkkkkkkkkkk');
        return 'cxascas';
        }
    );
  }
}
