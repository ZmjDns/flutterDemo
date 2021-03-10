import 'package:flutter/material.dart';

class DialogsPage extends StatefulWidget {
  @override
  _DialogsPageState createState() => _DialogsPageState();
}

class _DialogsPageState extends State<DialogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('各种Dialog'),
      ),
      body: Column(
        children: [
          Text('dialog'),
          _dialogWidgets(),
        ],
      ),
    );
  }

  Widget _dialogWidgets () {
    return Column(
      children: [
        RaisedButton(
          child: Text('nativeDialog'),
          onPressed: (){
            print('点击');
            _alertDialog();
          },
        ),
        RaisedButton(
          child: Text('SimpleDialog'),
          onPressed: (){
            print('点击SimpleDialog');
            _simpleDialog();
          },
        ),
      ],
    );
  }

  _alertDialog () async {
    // 原生dialog铺满全屏 不好看需要自定义
    // showDialog(
    //   context: context,
    //   builder: (context){
    //     return Container(
    //       height: 100,
    //       color: Colors.blue,
    //     );
    //   }
    // );
   var result = await showDialog(
     context: context,
     builder: (context){
       return AlertDialog(
         title: Text('AlertDialog'),
         content: Text('I am content of AlertDialog'),
         actions: [
           FlatButton(
             child: Text('确定'),
             onPressed: (){
               print('确定');
               // 关闭AlertDialog,并且可以回传数据
               // Navigator.pop(context);
               Navigator.pop(context, 'Conform');
             },
           ),
           RaisedButton(
             child: Text('取消'),
             onPressed: (){
               print('取消');
               // 关闭AlertDialog
               // Navigator.pop(context);
               Navigator.pop(context, 'Cancel');
             },
           )
         ],
       );
     }
   );

   print('回调数据：$result');
  }

  //simpleDialog
  _simpleDialog () {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('SimpleDialog,select content'),
          children: [
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: (){
                print('Option A');
                Navigator.pop(context);
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: (){
                print('Option B');
                Navigator.pop(context);
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: (){
                print('Option C');
                Navigator.pop(context);
              },
            ),
            Divider(),
          ],
        );
      }
    );
  }
}
