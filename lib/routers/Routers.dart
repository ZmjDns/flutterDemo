import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/pages/FormPage.dart';
import 'package:flutter_app_androidx/pages/SearchPage.dart';

final routes = {
  '/form': (context,{arguments}) => FormPage(),
  '/search': (context,{arguments}) => SearchPage(arguments: arguments,)
};

// 统一命名路由跳转
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name]; //获取路由中对应页面名称对应的执行方法
  if(pageContentBuilder != null) {
    if(settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context,arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }else{
    return null;
  }
};