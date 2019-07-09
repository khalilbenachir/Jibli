import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'CategoriesListItem.dart';

class FirstHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 45),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "FooD",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                  Text(
                    "Delivered",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.black45,
              ),
              SizedBox(width: 20,),
              Expanded(child: TextField(
                decoration: InputDecoration(
                  hintText: "Search ...",
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  hintStyle: TextStyle(
                    color: Colors.black87
                  )
                ),
              ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CategoriesListItem(
                  categoryIcon:Icons.bug_report,
                  categoryName:"Burgers",
                  availability:12,
                  selected:true
                ),
                CategoriesListItem(
                    categoryIcon:Icons.bug_report,
                    categoryName:"Burgers",
                    availability:12,
                    selected:false
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
