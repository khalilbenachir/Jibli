import 'package:flutter/material.dart';


class FoodItem{

  int id;
  String title,hotel;
  double price;
  String imageUrl;
  int quantity;


  FoodItem({
    @required this.id,
    @required this.title,
    @required this.hotel,
    @required this.price,
    @required this.imageUrl,

    this.quantity=1


  });

  void incrementQuantite(){
    this.quantity++;
  }

  void decrementQuantite(){
    this.quantity--;
  }

}