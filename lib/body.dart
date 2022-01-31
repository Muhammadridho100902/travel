// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_app/Name_Titled.dart';
import 'package:travel_app/Search_Filter.dart';
import 'package:travel_app/card_popular.dart';
import 'package:travel_app/constans.dart';
import 'package:travel_app/titled_card.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          name_titled(),
          search_filter(),
          titled_card(
            title: "Popular Location",
            text: "Recommendation",
          ),
          Padding(
            padding: EdgeInsets.only(top: kDefaultPadding*1.5),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              showUnselectedLabels: false,
              iconSize: 30,
              selectedFontSize: 14,
              currentIndex: currentIndex,
              backgroundColor: kBackgroundColor,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet_travel_rounded),
                  label: 'Wallet',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.compass_calibration),
                  label: 'Guide',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_rounded),
                  label: 'Chart',
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
