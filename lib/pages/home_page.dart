import 'package:awesome_food_app/widgets/home_nav_bar.dart';
import 'package:awesome_food_app/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  "Hot & Fast Food",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  "Delievers on Time",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white60,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TabBar(
                  isScrollable: false,
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  tabs: [
                    Tab(text: "Burger"),
                    Tab(text: "Pizza"),
                    Tab(text: "Cheese"),
                    Tab(text: "Pasta"),
                  ]),
              Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                  ])) 
            ],
          ),
        )),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
