import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Varuna Yassas", "1 review 5 photos", "There is an mazing place in Sri Lanka"),
        Review("assets/img/ann.jpg", "Anahí Salgado", "2 review 4 photos", "There is an mazing place in Sri Lanka"),
        Review("assets/img/girl.jpg", "Mery Russes", "1 review 5 photos", "There is an mazing place in Sri Lanka"),
      ],
    );
  }

}