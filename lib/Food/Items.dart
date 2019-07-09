import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String hotel;
  final String itemName;
  final double itemPrice;
  final String imageUrl;
  final bool leftAligned;

  Items({
    @required this.hotel,
    @required this.itemName,
    @required this.itemPrice,
    @required this.imageUrl,
    @required this.leftAligned,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: leftAligned ? 0 : 45, right: leftAligned ? 45 : 0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(
                      left: leftAligned
                          ? Radius.circular(0)
                          : Radius.circular(10),
                      right: leftAligned
                          ? Radius.circular(10)
                          : Radius.circular(0)),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: leftAligned ? 20 : 0, right: leftAligned ? 0 : 20),
              ),

            ],
          ),
        )
      ],
    );
  }
}
