import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20.0
        ),
        textAlign: TextAlign.start,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Hello world column'),
                    Text('I am jyp')
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}