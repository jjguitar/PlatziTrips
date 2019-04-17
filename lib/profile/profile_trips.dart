import 'package:flutter/material.dart';
import 'package:flutter_app/profile/card_image_profile_list.dart';
import 'package:flutter_app/profile/circle_button.dart';
import 'perfil_profile.dart';
import 'card_image_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build

    final settings = Container(
      margin: EdgeInsets.only(
        top: 70.0,
          left: 220.0,
          right: 3.0,
      ),

      child: Icon(
        Icons.settings,
        size: 15.0  ,
        color: Color(0xFFAAA7E0),
      ),
    );

    final profileName =  Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 60.0,
              left: 30.0
          ),
          child: Text(
            "Profile",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0

            ),
          ),
         // alignment: Alignment(-0.7, -0.8),
        ),
        settings
      ],
    );

    final background =       Container(
      width: screenWidth,
      height: screenHeight  * 0.45,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5, -0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              borderRadius: BorderRadius.circular(screenHeight / 2)
          ),
        ),
      ),
    );

    final profile = Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 0.0
          ),
          child: Row(
            children: <Widget>[
              CircleButton(true, Icons.turned_in_not, 20.0, Color.fromRGBO(255, 255, 255, 1)),
              CircleButton(true, Icons.card_travel, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
              CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1)),
              CircleButton(true, Icons.mail_outline, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
              CircleButton(true, Icons.person, 20.0, Color.fromRGBO(255, 255, 255, 0.6))
            ],
          )
        );

    return Stack(
      children: <Widget>[
        background,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            profileName,
            PerfilProfile(),
            profile,
            CardImageProfileList(),
          ],
        )
      ],
    );
  }

}