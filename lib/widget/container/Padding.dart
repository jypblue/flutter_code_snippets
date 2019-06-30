
import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
    );
  }
}