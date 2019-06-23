import 'package:flutter/material.dart';


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
          children: <Widget>[
            TextWidget(),
          ]
        )
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Hello word", textAlign: TextAlign.center,),
          Text("Hello world! I'm Jack. "*6,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text("Hello world", textScaleFactor: 1.5),
          Text("Hello world"*6, textAlign: TextAlign.center,),

        ],
      ),
    );
  }
}