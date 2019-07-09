import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'BLoC/cartListBloc.dart';
import 'Page/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        blocs: [Bloc((i) => CartListBloc())],
        child: MaterialApp(
            title: "Jibli",
            home: Scaffold(
              body: Home(),
            )),
      ),
    );
  }
}
