// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/DetailPage.dart';
import 'package:travel_app/card_popular.dart';
import 'package:travel_app/constans.dart';
import 'package:travel_app/page/bromo.dart';
import 'package:travel_app/page/derawan.dart';
import 'package:travel_app/page/papua.dart';
import 'package:travel_app/recommend_card.dart';

class titled_card extends StatelessWidget {
  const titled_card({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              top: kDefaultPadding * 2.5, left: kDefaultPadding),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        card_populer(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 1.5),
        Padding(
          padding: EdgeInsets.only(
              top: kDefaultPadding * 1.5, left: kDefaultPadding),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding, top: kDefaultPadding),
                    child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Derawan())
                      );
                    },
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/derawan.jpg",
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black54.withOpacity(0.1),
                              Colors.black
                            ])
                          ),
                        ),
                      ),
                      Positioned(
                                bottom: 40,
                                left: 22,
                                child: Text(
                                  "Derawan Beach",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding, top: kDefaultPadding),
                    child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Bromo())
                      );
                    },
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "images/bromo.jpg",
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                            Colors.grey.withOpacity(0.0),
                            Colors.black54.withOpacity(0.1),
                            Colors.black
                          ])
                        ),
                      ),
                    ),
                    Positioned(
                              bottom: 40,
                              left: 50,
                              child: Text(
                                "Bromo",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                  ],
                ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding, top: kDefaultPadding),
                    child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Papua())
                      );
                    },
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "images/papua.jpg",
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                            Colors.grey.withOpacity(0.0),
                            Colors.black54.withOpacity(0.1),
                            Colors.black
                          ])
                        ),
                      ),
                    ),
                    Positioned(
                              bottom: 40,
                              left: 50,
                              child: Text(
                                "Papua",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                  ],
                ),
                    ),
              ),
              recommend_card(),
            ],
          ),
        )
      ],
    );
  }
}

