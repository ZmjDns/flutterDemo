import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/components/tab/Tabs.dart';
import 'package:flutter_app_androidx/pages/AppBarPage.dart';
import 'package:flutter_app_androidx/pages/CheckBoxRadioBtnPage.dart';
import 'package:flutter_app_androidx/pages/DatePage.dart';
import 'package:flutter_app_androidx/pages/DialogsPage.dart';
import 'package:flutter_app_androidx/pages/FormExercise.dart';
import 'package:flutter_app_androidx/pages/FormPage.dart';
import 'package:flutter_app_androidx/pages/ProductDetailPage.dart';
import 'package:flutter_app_androidx/pages/ProductPage.dart';
import 'package:flutter_app_androidx/pages/SearchPage.dart';
import 'package:flutter_app_androidx/pages/SwiperPage.dart';
import 'package:flutter_app_androidx/pages/TabBarControllerPage.dart';
import 'package:flutter_app_androidx/pages/TopTabPage.dart';
import 'package:flutter_app_androidx/pages/user/login.dart';
import 'package:flutter_app_androidx/pages/user/register.dart';
import 'package:flutter_app_androidx/pages/user/userCenter.dart';

final routes = {
  '/': (context,{arguments}) => Tabs(), //  抽离Tabs作为跟路由
  '/form': (context,{arguments}) => FormPage(),
  '/search': (context,{arguments}) => SearchPage(arguments: arguments,),
  '/product': (context) => ProductPage(),
  '/productDetail': (context,{arguments}) => ProductDetailPage(arguments: arguments),
  '/register': (context) => RegisterPage(),
  '/login': (context) => LoginPage(),
  '/appBar': (context) => AppBarPage(),
  '/topTab': (context) => TopTabPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/userCenter': (context) => UserCenter(),
  '/checkBoxRadioBtn': (context) => CheckBoxRadioBtnPage(),
  '/formExercise': (context) => FormExercise(),
  '/datePage': (context) => DatePage(),
  '/swiperPage': (context) => SwiperPage(),
  '/dialogsPage': (context) => DialogsPage(),

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