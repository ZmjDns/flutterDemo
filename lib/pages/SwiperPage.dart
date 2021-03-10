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
        appBar: AppBar(
          title: Text('轮播图'),
        ),
        body: Column(
          children: [
            Container(
              // height: 200, //(去掉高度)
              width: double.infinity, //(实现宽度100%平铺)
              child: AspectRatio(
                //  限定比例
                aspectRatio: 16 / 9,
                child: new Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      imgList[index]['url'],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: imgList.length,
                  pagination: new SwiperPagination(), //分页
                  // control: new SwiperControl(), //  滑动箭头
                  autoplay: true,
                ),
              ),
            ),
            Row(
              children: [
                Text('我是文字'),
              ],
            ),
            Container(
                child: Swiper(
                    layout: SwiperLayout.CUSTOM,
                    customLayoutOption:
                    new CustomLayoutOption(startIndex: -1, stateCount: 3)
                        .addRotate([-45.0 / 180, 0.0, 45.0 / 180])
                        .addTranslate([new Offset(-370.0, -40.0),new Offset(0.0, 0.0),new Offset(370.0, -40.0)]),
                    itemWidth: 300.0,
                    itemHeight: 200.0,
                    itemBuilder: (context, index) {
                      return new Container(
                        // color: Colors.grey,
                        child: new Center(
                          child: Image.network(imgList[index]['url'], fit: BoxFit.cover,),
                        ),
                      );
                    },
                    itemCount: imgList.length)
            ),
          ],
        ));
  }
}
