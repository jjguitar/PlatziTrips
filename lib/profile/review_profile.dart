import 'package:flutter/material.dart';

class ReviewProfile extends StatelessWidget {

  String pathImage = "asset/img/people.jpg";
  String name = "Knuckles Mountains Range";
  String details = "Hiking, Water tall hunting, Natural bath \n Scenery & Photography";
  String comment = "Steps   123,123,123";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0,
              top: 7.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 11.5,
            color: Color(0xFFF49609),
            fontWeight: FontWeight.w900
        ),

      ),

    );

    final userInfo = Container(
          margin: EdgeInsets.only(
              left: 20.0
          ),

          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 8.0,
                color: Color(0xFFB9BABE),
                fontWeight: FontWeight.w900,
            ),

          ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 13.0,
          bottom: 7.0,
          left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
          fontWeight: FontWeight.w900
        ),

      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment

      ],
    );


    return userDetails;

  }

}

