import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconContainer();
  }
}

/**
 * icon简单实现
 */
class IconContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.yellow,
      child: Center(
        child: Icon(Icons.home,size: 32,color: Colors.yellowAccent,),
      ),
    );
  }

}
