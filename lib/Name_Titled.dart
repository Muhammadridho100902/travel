// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/constans.dart';

class name_titled extends StatelessWidget {
  const name_titled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding*3.5, left: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: <TextSpan>[                
              TextSpan(
                text: "Find Your Next Trip\n",
                style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                TextSpan(
                text: "Indonesia",
                style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
          ),
          )
        ],
      ),
    );
  }
}
