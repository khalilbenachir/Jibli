import 'package:flutter/material.dart';
import 'FirstHalf.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        child: ListView(
          children: <Widget>[
              FirstHalf()
          ],
        ),
      )),
    );
  }
}
