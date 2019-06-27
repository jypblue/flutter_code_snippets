import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import './Row.dart';
import './Column.dart';




// 路由组件
class LayoutWidgetRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Widget")
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            RowWidget(),
            ColumnWidget(),
          ]
        )
    );
  }
}