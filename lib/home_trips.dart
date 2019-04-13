import 'package:flutter/material.dart';
import 'package:flutter_app/description_place.dart';
import 'package:flutter_app/header_appbar.dart';
import 'package:flutter_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescritionPlace("Bahamas", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
            ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }

}