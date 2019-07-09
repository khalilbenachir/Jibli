import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

import 'package:fooddelivery/Food/foodItem.dart';
import 'provider.dart';

class CartListBloc extends BlocBase {
  CartListBloc();

//Stream that receives a number and changes the count;

  CartProvider _cartProvider = CartProvider();
  final _cartItemController= StreamController.broadcast();

//output
  Stream<List<FoodItem>> get _listSink => _cartItemController.stream;


//Business logic
  addToList(FoodItem _foodItem) {
    _cartItemController.sink.add(_cartProvider.addToList(_foodItem));
  }

  removeFromList(FoodItem _foodItem) {
    _cartItemController.sink.add(_cartProvider.removeFromList(_foodItem));
  }

//dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _cartItemController.close();
    super.dispose();
  }
}
