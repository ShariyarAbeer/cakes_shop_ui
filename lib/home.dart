import 'package:cakes_shop_ui/foodlist.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(75.0)),
                    color: Colors.deepOrange[300]),
              ),
              Container(
                height: 185.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(75.0)),
                    color: Colors.deepOrange[200]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 35.0),
                child: Text(
                  "Good Afternoon!",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 75.0),
                child: Text(
                  "Choose your favorite!",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.0, left: 15.0, right: 15.0),
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width - 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      hintText: "Search for your favorite",
                      hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              )
            ],
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.deepOrange[200],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                  "DESSERT",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "PIZZA",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "BARBECUE",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "DRINKS",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 500.0,
            child: TabBarView(controller: tabController, children: [
              FoodList(),
              FoodList(),
              FoodList(),
              FoodList(),
            ]),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            height: 40.0,
            child: Text(
              "RECOMMEND",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          _listItem('assets/food1.jpg', 'Chocolate \ncup cake',
              'The sour of lemon ', '\$18.0', 134, 2412, '2-3per'),
          SizedBox(height: 10.0),
          _listItem('assets/food2.jpg', 'Strawberry \ncupcake', 'Rich in taste',
              '\$18.0', 134, 2412, '2-3per'),
          SizedBox(height: 20.0)
        ],
      ),
    );
  }

  _listItem(String imgPath, String foodName, String desc, String price,
      int likes, int calCount, String serving) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            left: 15.0,
            top: 30.0,
            child: Container(
              height: 125.0,
              width: MediaQuery.of(context).size.width - 60.0,
              decoration: BoxDecoration(
                  color: Color(0xFFF9EFEB),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3.0,
                        blurRadius: 3.0)
                  ]),
              child: Text('Helloworld'),
            ),
          ),
          Positioned(
              left: 95.0,
              top: 64.0,
              child: Container(
                height: 105.0,
                width: MediaQuery.of(context).size.width - 60.0,
                decoration: BoxDecoration(
                    color: Color(0xFFF9EFEB),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3.0,
                          blurRadius: 3.0)
                    ]),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0, left: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.favorite,
                            color: Color(0xFFF75A4C), size: 15.0),
                        SizedBox(width: 5.0),
                        Text(
                          likes.toString(),
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 25.0),
                        Icon(Icons.account_box,
                            color: Color(0xFFF75A4C), size: 15.0),
                        SizedBox(width: 5.0),
                        Text(
                          calCount.toString() + 'cal',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 25.0),
                        Icon(Icons.play_circle_outline,
                            color: Color(0xFFF75A4C), size: 15.0),
                        SizedBox(width: 5.0),
                        Text(
                          serving,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              )),
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width - 20.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.asset(imgPath, fit: BoxFit.cover),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        foodName,
                        style: TextStyle(
                            color: Color(0xFF563734),
                            fontFamily: 'Montserrat',
                            fontSize: 15.0),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        width: 100.0,
                        child: Text(
                          desc,
                          style: TextStyle(
                              color: Color(0xFFB2A9A9),
                              fontFamily: 'Montserrat',
                              fontSize: 11.0),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        price.toString(),
                        style: TextStyle(
                            color: Color(0xFFF76053),
                            fontFamily: 'Montserrat',
                            fontSize: 15.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
