import 'package:flutter/material.dart';

import './MyIcon.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.red,
          fontSize: 20.0
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/img/avatar.jpeg', width:100.0),
            Image(
              image: AssetImage('assets/img/snapseed.jpg'),
              width: 120.0,
            ),

            // 直接远程拉取文件flutter要报错
            // Image(
            //   image: NetworkImage("https://avatars3.githubusercontent.com/u/5317786?s=460&v=4"),
            //   width: 100.0,
            // ),
            // Image.network(
            //   "https://avatars3.githubusercontent.com/u/5317786?s=460&v=4",
            //   width: 100.0,
            // ),
            // Text(sicons, style: TextStyle(
            //   fontFamily: "MaterialIcons",
            //   fontSize: 24.0,
            //   color: Colors.green
            // )),
            Icon(MyIcons.wechat, color: Colors.green),
            Icon(MyIcons.alipay, color: Colors.blue)
          ],
        ),
      ),
    );
  }
}