import 'package:flutter/material.dart';

class CategoriesListItem extends StatelessWidget {

  final IconData categoryIcon;
  final String categoryName;
  final int availability;
  final bool selected;

  CategoriesListItem({
    @required this.categoryIcon,
    @required this.categoryName,
    @required this.availability,
    @required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: selected ? Color(0xfffeb324) : Colors.white,
          border: Border.all(
              color: selected ? Colors.transparent : Colors.grey[200],
              width: 1.5
          ),
          boxShadow: [BoxShadow(
              color: Colors.grey[100],
              blurRadius: 10,
              offset: Offset(25, 0),
              spreadRadius: 5
          )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                  color: selected ? Colors.transparent : Colors.grey[200],
                  width: 1.5
              ),
            ),
            child: Icon(categoryIcon, color: Colors.black, size: 30,),


          ),
          SizedBox(height: 10,),
          Text(
            categoryName,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            width: 1.5,
            height: 15,
            color: Colors.black26,
          ),
          Text(availability.toString(),style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black
          ),)
        ],
      ),

    );
  }
}
