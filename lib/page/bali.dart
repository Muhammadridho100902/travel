// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_app/constans.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Bali extends StatelessWidget {
  const Bali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                child: Image.asset(
                  "images/bali.jpg",
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
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
                            Colors.black54.withOpacity(0.4),
                            Colors.black
                          ])),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 6,
                left: 20,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                      text: "Bali\n",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "Bali is a province of Indonesia \nand the westernmost of the Lesser \nSunda Islands.\n",
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        )
                      ]),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 6,
                left: 20,
                child: Row(
                  children: <Widget>[
                    RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemSize: 14,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(
                      "4.79(78 reviews)",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: kDefaultPadding * 2.3),
                      child: Text(
                        "See reviews",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 18,
                left: 20,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: kDefaultPadding),
                      child: Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white.withOpacity(0.1)),
                        child: Center(
                          child: Text(
                            "Enter the plan",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white
                            ),
                            )
                          ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                          child: Center(
                          child: Text(
                            "View Other",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                            ),
                            )
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
