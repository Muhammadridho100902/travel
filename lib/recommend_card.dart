// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/constans.dart';
import 'package:travel_app/page/wira.dart';

class recommend_card extends StatelessWidget {
  const recommend_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, top: kDefaultPadding, right: kDefaultPadding),
          child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Wira())
                      );
                    },
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "images/wira.jpg",
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
                    left: 35,
                    child: Text(
                      "Raja Ampat",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
        ],
      ),
          ),
    );
  }
}
