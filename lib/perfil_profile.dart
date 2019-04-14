import 'package:flutter/material.dart';

class PerfilProfile extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "jhon.electronica@gmail.com";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userInfo = Container(
          margin: EdgeInsets.only(
              left: 20.0
          ),

          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 12.0,
                color: Color(0xFFa3a5a7)
            ),

          ),

        );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 20.0,
          left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),

      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,

      ],
    );

    final photo = Container (
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colors.white),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          )
      ),

    );

    return Row (
      children: <Widget>[
        photo,
        userDetails

      ],
    );

  }

}

