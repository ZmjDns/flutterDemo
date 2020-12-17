import 'dart:io';

import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品页'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('进入商品详情页'),
            onPressed: (){
              Navigator.pushNamed(context, '/productDetail', arguments: {'pid' : 'hahahhahahaha'});
            },
          )
        ],
      ),
    );
  }
}
