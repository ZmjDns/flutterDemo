import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

List<Map> imgList = [
  {'url': 'https://www.itying.com/images/flutter/1.png'},
  {'url': 'https://www.itying.com/images/flutter/2.png'},
  {'url': 'https://www.itying.com/images/flutter/3.png'},
];

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('轮播图'),),
      body: Column(
        children: [
          Container(
            // height: 200, //(去掉高度)
            width: double.infinity,//(实现宽度100%平铺)
            child: AspectRatio( //  限定比例
              aspectRatio: 16/9,
              child: new Swiper(
                itemBuilder: (BuildContext context,int index){
                return new Image.network(imgList[index]['url'],fit: BoxFit.fill,);
                },
                  itemCount: imgList.length,
                  pagination: new SwiperPagination(), //分页
                  control: new SwiperControl(), //  滑动箭头
                ),
            ),
          ),
          Row(
            children: [
              Text('我是文字'),
            ],
          )
        ],
      )
    );
  }
}
