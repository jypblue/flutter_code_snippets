// TapboxB 父组件管理自身状态


import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  ParentWidget({Key key}) : super(key: key);

  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(
      (){
        _active = newValue;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
       child: new TapboxB(
         active: _active,
         onChanged: _handleTapboxChanged,
       ),
    );
  }
}

class TapboxB extends StatelessWidget {
  const TapboxB({Key key, this.active : false, @required this.onChanged }) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),

    );
  }
}