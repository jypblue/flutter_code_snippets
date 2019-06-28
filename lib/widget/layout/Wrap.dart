import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A'),),
            label: new Text('Hamilton'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('B'),),
            label: new Text('Hamilton1'),
          ),
           new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('C', style: TextStyle(fontSize: 11.0),), radius: 10.0,),
            label: new Text('Hamilton2',style: TextStyle(fontSize: 24.0),),
          ),
           new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('D'),),
            label: new Text('Hamilton3'),
          ),
        ],
      ),
    );
  }
}