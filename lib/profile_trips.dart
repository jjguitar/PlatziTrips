import 'package:flutter/material.dart';
import 'perfil_profile.dart';

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

    //final profile =

    return Stack(
      children: <Widget>[
        background,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            profileName,
            PerfilProfile()
          ],
        )
      ],
    );
  }

}