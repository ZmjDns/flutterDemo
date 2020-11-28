import 'package:flutter/cupertino.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridViewComp1(),
    );
  }
}
/***
 * 简单的GridView实现
 */
class GridViewComp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Text('this is a Baster'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text'),
        Text('this is a Text')
      ],
    );
  }
}