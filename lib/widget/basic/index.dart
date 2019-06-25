import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './Text.dart';
import './Button.dart';
import './Image.dart';
import './Checkbox.dart';
import './Field.dart';


// 路由组件
class BasicWidgetRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Widget")
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('1. Text Widget : ', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 22.0,
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
                  fontSize: 22.0,
                ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                ButtonWidget(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Text('3. Image & Icon Widget : ', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 22.0,
                ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                ImageWidget(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Text('4. Checkbox & Swich Widget : ', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 22.0,
                ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0),),
                SwitchAndCheckboxWidget(),
                Text('5. Field Widget : ', textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0,),),
                Padding(padding: EdgeInsets.only(bottom: 10.0),),
                FieldWidget(),

              ],
            ),
          ]
        )
    );
  }
}