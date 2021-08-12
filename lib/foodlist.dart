import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key key}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _itemFood("assets/food1.jpg", "Strawberry", 53.3, 5, true),
        _itemFood("assets/food2.jpg", "Cream", 115.2, 7, false),
        _itemFood("assets/food1.jpg", "Waffles", 16.2, 4, true),
      ],
    );
  }

  Widget _itemFood(String imgPath, String foodName, double price, int calCount,
      bool hasMilk) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 3.0,
                  spreadRadius: 3.0)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                Positioned(
                  top: 92.0,
                  left: 60.0,
                  child: hasMilk
                      ? Container(
                          height: 15.0,
                          width: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.purple[500],
                              style: BorderStyle.solid,
                              width: 0.25,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                              child: Text(
                            "with milk",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.purple[300]),
                          )),
                        )
                      : Container(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
              child: Text(
                foodName,
                softWrap: true,
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.money_outlined,
                    size: 15.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    price.toString(),
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 15.0, top: 15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.cached,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      calCount.toString(),
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
