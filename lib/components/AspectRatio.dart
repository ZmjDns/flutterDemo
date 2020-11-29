import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio2();//LayoutSimpleAspect();
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
