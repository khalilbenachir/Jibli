import 'package:flutter/material.dart';

import 'package:fooddelivery/Food/foodItem.dart';


class CartProvider{
  List<FoodItem> _foodItems=[];


  List<FoodItem> addToList(FoodItem _foodItem){
    _foodItems.add(_foodItem);
    return _foodItems;
  }

  List<FoodItem> removeFromList(FoodItem _foodItem){
    _foodItems.remove(_foodItem);
    return _foodItems;
  }
}