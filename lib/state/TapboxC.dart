// TapboxC 混合管理自身状态

import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {
  ParentWidgetC({Key key}) : super(key: key);

  _ParentWidgetCState createState() => _ParentWidgetCState();
}

class _ParentWidgetCState extends State<ParentWidgetC> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
       child: new TapboxC(
         active: _active,
         onChanged: _handleTapboxChanged,
       ),
    );
  }
}

class TapboxC extends StatefulWidget {
  TapboxC({Key key, this.active: false, @required this.onChanged }) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  _TapboxCState createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  // 调用父组件方法_handleTapboxChanged
  void _handleTap() {
    widget.onChanged(!widget.active);
  }




  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
         child: new Center(
           child: new Text(
             widget.active ? 'Active' : 'Inactive',
             style: new TextStyle(fontSize: 32.0, color: Colors.white)
             ),
         ),
         width: 200.0,
         height: 200.0,
         decoration: new BoxDecoration(
           color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
           border: _highlight ? new Border.all(color: Colors.teal[700], width: 10.0) : null,
         ),
       )
    );
  }
}