import 'package:flutter/material.dart';
import 'foodItem.dart';
import 'Items.dart';

class ItemContainer extends StatelessWidget {
  final FoodItem foodItem;

  ItemContainer(@required this.foodItem);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Items(
        hotel:foodItem.hotel,
        itemName:foodItem.title,
        itemPrice:foodItem.price,
        imageUrl:foodItem.imageUrl,
        leftAligned:foodItem.id % 2==0?true:false
      ),
    );
  }
}
