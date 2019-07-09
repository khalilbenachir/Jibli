import 'package:flutter/material.dart';
import 'CustomAppBar.dart';

class FirstHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[
          CustomAppBar()
        ],
      ),
    );
  }
}
