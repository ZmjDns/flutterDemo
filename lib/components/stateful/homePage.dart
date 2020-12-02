import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * StatelessWidget的子类无法更改组件的状态
 */
class HomePage extends StatelessWidget {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${this._count}'),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('btn'),
          onPressed: () {
            this._count++;
            print(this._count);
          },
        ),
      ],
    );
  }
}

