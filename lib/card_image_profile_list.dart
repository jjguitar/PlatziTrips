import 'package:flutter/material.dart';
import 'package:flutter_app/card_image_profile.dart';
import 'card_image.dart';

class CardImageProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 500.0,
      margin: EdgeInsets.only(
        bottom: 60.0
      ),
      child: ListView(
        padding: EdgeInsets.all(0.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[

          CardImageProfile("assets/img/beach.jpeg"),
          CardImageProfile("assets/img/beach_palm.jpeg"),
          CardImageProfile("assets/img/mountain.jpeg"),
          CardImageProfile("assets/img/mountain_stars.jpeg"),
          CardImageProfile("assets/img/river.jpeg"),
          CardImageProfile("assets/img/sunset.jpeg"),
        ],
      ),
    );
  }

}