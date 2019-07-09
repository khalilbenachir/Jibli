import 'package:flutter/material.dart';
import 'FirstHalf.dart';
import 'package:fooddelivery/Food/foodListModel.dart';
import 'package:fooddelivery/Food/ItemContainer.dart';
import 'package:fooddelivery/Food/ItemContainer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          children: <Widget>[
            FirstHalf(),
            SizedBox(
              height: 45,
            ),

            for(var fooditem in foodItemList.foodItems)
              ItemContainer(fooditem)

          ],
        ),
      )),
    );
  }
}
