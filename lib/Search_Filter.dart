// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/constans.dart';

class search_filter extends StatelessWidget {
  const search_filter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: kDefaultPadding*1.5, left: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 1.45,
              child: Padding(
                padding: EdgeInsets.only(left: kDefaultPadding),
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.search,
                        color: Colors.black45.withOpacity(0.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: kDefaultPadding / 2),
                      child: Text(
                        "Search . . . ",
                        style: TextStyle(
                          color: Colors.black45.withOpacity(0.4),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black45.withOpacity(0.2), width: 1.0),
                  borderRadius: BorderRadius.circular(25))),
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding),
            child: Container(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 7,
              child: Image.asset("images/setting.png"),
              decoration: BoxDecoration(
                  color: kButtonColor,
                  borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}