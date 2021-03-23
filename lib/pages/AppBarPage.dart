import 'package:flutter/material.dart';
import 'package:flutter_app_androidx/components/tab/Tabs.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 6,
      vsync: this //  此处的对象必须是TickerProvider的子类，所以用实现SingleTickerProviderStateMixin来作为TickerProvider的子类
    );
    // _tabController.addListener(() {
    //   print(_tabController.index);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarPage'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(fontSize: 18),
          indicatorColor: Colors.pink,
          tabs: [
            Text('电影'),
            Text('娱乐'),
            Text('美女'),
            Text('学习'),
            Text('撸码'),
            Text('咨询'),
          ],
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text('111111'),
          ),
          Center(
            child: Text('22222'),
          ),
          Center(
            child: Text('33333'),
          ),
          Center(
            child: Text('44444'),
          ),
          Center(
            child: Text('55555'),
          ),
          Center(
            child: Text('66666'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}



// class AppBarPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AppbarPage'),
//         centerTitle: true,  // 标题居中
//         backgroundColor: Colors.blue,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: (){
//               print('点击search');
//             },
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Text('111111111')
//         ],
//       ),
//     );
//   }
// }
