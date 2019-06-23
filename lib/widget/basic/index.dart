import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './Text.dart';
import './Button.dart';
import './Image.dart';


// 路由组件
class BasicWidgetRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Widget")
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('1. Text Widget : ', textAlign: TextAlign.center, style: TextStyle(
              fontSize: 24.0,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            TextWidget(),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            Text('2. Button Widget : ', textAlign: TextAlign.center, style: TextStyle(
              fontSize: 24.0,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            ButtonWidget(),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            Text('3. Image Widget : ', textAlign: TextAlign.center, style: TextStyle(
              fontSize: 24.0,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            ImageWidget(),

          ]
        )
    );
  }
}