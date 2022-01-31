// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';
import 'package:travel_app/DetailPage.dart';
import 'package:travel_app/constans.dart';
import 'package:travel_app/page/bali.dart';
import 'package:travel_app/page/jakarta.dart';
import 'package:travel_app/page/jogja.dart';

class card_populer extends StatelessWidget {
  const card_populer({
    Key? key,
    this.width,
    this.height,
    this.image,
  }) : super(key: key);
  final width;
  final height;
  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: kDefaultPadding, top: kDefaultPadding, right: kDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const DetailPage())
                      );
                    },
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/seribu.jpg",
                      height: height,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 130,
                      width: width,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                              bottom: 20,
                              left: 15,
                              child: Text(
                                "Pulau Seribu",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Bali())
                      );
                    },
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "images/bali.jpg",
                        height: height,
                        width: width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 130,
                        width: width,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                              bottom: 20,
                              left: 15,
                              child: Text(
                                "Bali",
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
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Jakarta())
                      );
                    },
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/jakarta.jpg",
                      height: height,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 130,
                      width: width,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                            bottom: 20,
                            left: 15,
                            child: Text(
                              "Jakarta",
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
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Jogja())
                      );
                    },
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/jogja.jpg",
                      height: height,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 130,
                      width: width,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                            bottom: 20,
                            left: 15,
                            child: Text(
                              "Yogyakarta",
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
          ],
        ),
      ),
    );
  }
}
