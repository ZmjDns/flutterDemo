import 'package:flutter/material.dart';

class ZMJDrawer extends StatefulWidget {
  @override
  ZMJDrawerState createState() => ZMJDrawerState();

}

class ZMJDrawerState extends State<ZMJDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
            ),
            child: Center(
              child: Text(
                'Demo',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            )
          )
        ],
      )
    );
  }
}