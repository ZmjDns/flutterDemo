import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({this.title,this.content});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text('${this.title}'),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  )
              ),
              Divider(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Text('${this.content}', textAlign: TextAlign.start,),
              ),
            ],
          ),
        )
      ),
    );
  }
}