import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppbarPage'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            print('点击home');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('点击search');
            },
          )
        ],
      ),
      body: Column(
        children: [
          Text('111111111')
        ],
      ),
    );
  }
}
