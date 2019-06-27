import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



// 路由组件
class ContainerWidgetRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget")
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[

          ]
        )
    );
  }
}