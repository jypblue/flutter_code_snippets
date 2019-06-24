import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class TextWidget extends StatelessWidget {
  const TextWidget({Key key}) : super(key: key);

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
            Text("Hello word", style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: new Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              inherit: false
            ),),
            Text("Hello world! I'm Jack. "*6,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text("Hello world 1.5", style: TextStyle(inherit: false, color: Colors.black), textScaleFactor: 1.5,),
            Text("Hello world"*6, textAlign: TextAlign.center,),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: 'Home: '
                ),
                TextSpan(
                  text: 'https://flutterchina.club',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                )
              ]
            )),

          ],
        ),
      ),
    );
  }
}