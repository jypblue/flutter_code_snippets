import 'package:flutter/material.dart';

class SwitchAndCheckboxWidget extends StatefulWidget {
  SwitchAndCheckboxWidget({Key key}) : super(key: key);

  _SwitchAndCheckboxWidgetState createState() => _SwitchAndCheckboxWidgetState();
}

class _SwitchAndCheckboxWidgetState extends State<SwitchAndCheckboxWidget> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Switch(
            value: _switchSelected,//当前状态
            onChanged:(value){
              //重新构建页面
              setState(() {
                _switchSelected=value;
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red, //选中时的颜色
            onChanged:(value){
              setState(() {
                _checkboxSelected=value;
              });
            }
          )
         ],
       ),
    );
  }
}