import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePage extends StatefulWidget {
  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {

  var now = DateTime.now();

  var formatDateStr = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);

  @override
  void initState() {
    super.initState();
    //  日期转换
    print('当前日期：$now');
    print('当前时间戳：${now.millisecondsSinceEpoch}');
    print('转换时间戳：${DateTime.fromMillisecondsSinceEpoch(1611580958098)}');
    print('dateFormat：${formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd])}');
  }

  // Flutter内置的DatePicker
  _showDatePicker() {
    DateTime _nowDate = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100)
    ).then((value) => {
      print(value)
    });
  }

  _showDatePickerAsync() async {
    var _nowDate = DateTime.now();
    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100)
    );
    print(result);
    setState(() {
      this.formatDateStr = formatDate(result, [yyyy, '-', mm, '-', dd]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期组件'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(this.formatDateStr),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: (){
              print('打开日期组件');
              //this._showDatePicker();
              this._showDatePickerAsync();
            },
          )
        ],
      ),
    );

  }
}
