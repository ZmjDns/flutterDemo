import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  Map arguments;
  ProductDetailPage({this.arguments});
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Text('商品详情页面${widget.arguments}'),
    );
  }
}
