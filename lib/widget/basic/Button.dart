import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key key}) : super(key: key);

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
            RaisedButton(
              child: Text('raise button'),
              onPressed: () => {},
              color: Color.fromRGBO(97,218,251,1),
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
            FlatButton(
              child: Text('flat button'),
              onPressed: () => {},
              color: Color.fromRGBO(97,218,251,1),
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
            OutlineButton(
              child: Text('ouline button'),
              onPressed: ()=>{},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: ()=>{},
            )
          ],
        ),
      ),
    );
  }
}